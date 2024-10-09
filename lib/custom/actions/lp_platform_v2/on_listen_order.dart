// Automatic FlutterFlow imports
import 'package:flutter_example_nhuy/model/order_data_item_struct.dart';
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:developer';

import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:html' show WebSocket, FileReader;
import 'dart:html' as html;

Future onListenOrder(
  String token,
  String message,
  String urlWS,
  Future Function(OrderDataItemStruct? order)? onListenActionPendingOrder,
  Future Function(OrderDataItemStruct? order)? onListenActionAccept,
  Future Function(OrderDataItemStruct? order)? onListenActionTokenLocked,
  Future Function(OrderDataItemStruct? order)? onListenActionLpConfirmed,
  Future Function(OrderDataItemStruct? order)? onListenTokenTransfering,
  Future Function(OrderDataItemStruct? order)? onListenActionUserConfirmed,
  Future Function(OrderDataItemStruct? order)? onListenActionSuccess,
  Future Function(OrderDataItemStruct? order)? onListenActionFailed,
  Future Function(OrderDataItemStruct? order)? onListenActionOtherTokenLocked,
  Future Function(OrderDataItemStruct? order)? onListenActionOtherAccepted,
) async {
  final socket = WebSocket('$urlWS?token_jwt=$token');
  try {
    // socket.onOpen.listen((state) {
    //   String stateType = state.type;
    //   send(message, socket);
    //   if (stateType == 'open') {
    //     log('WebSocket connected');
    //   }
    //   // Handle other states like reconnecting, etc.
    // });
    socket.onMessage.listen((message) async {
      if (FFAppState().openWs == false) {
        closeConnection(socket);
        print('WebSocket connection closed by our System');
      }
      if (message is String) {
      } else {
        String decodedMessage = await _blobToString(message.data);
        final Map<String, dynamic> parsedJson = json.decode(decodedMessage);
        List<Map<String, dynamic>> result = [];
        result.add(parsedJson);
        print('--48.parsedJson[topic]');
        print(parsedJson['topic']);

        if (parsedJson['topic'] == 6) {
          final decode = decodePayload(parsedJson['payload'].toString());
          // print('60.decode');
          // print(decode);
          //replace orderstruct for testordersocketreplystruct
          // print('---49.onListenOrder---');
          // print(decode.toString());
          // print(parsedJson.toString());
          if (decode != {}) {
            print('68.order');
            print(decode['data']);
            final order = OrderDataItemStruct.fromMap(decode['data']);
            print('ORDER INFORMATION: ');
            print(
                'status: ${order.status} \nuuid: ${order.uuid} \ntype: ${order.orderType} \nLpId: ${order.lpId} \n MerchantId: ${order.merchantId}');
            // print(FFAppState().LPUuid);
            // print(decode['lpId'] == FFAppState().LPUuid);

            //create switch case for state to do action per state
            if (decode['lpId'] == FFAppState().LPUuid) {
              switch (order.status) {
                case 'ACCEPTED':
                  // if (order.orderType == 'SELL') {
                  //   order.isDisable = true;
                  // }
                  onListenActionAccept?.call(order);
                  break;
                case 'TOKEN_LOCKED':
                  if (order.orderType == 'BUY') {
                    // greyout order
                    order.isDisable = true;
                  }
                  onListenActionTokenLocked?.call(order);
                  break;
                case 'LP_CONFIRMED':
                  onListenActionLpConfirmed?.call(order);
                  break;
                case 'USER_CONFIRMED':
                  if (order.orderType == 'SELL') {
                    onListenActionUserConfirmed?.call(order);
                  }
                case 'TRANSFERING_TOKEN':
                  onListenTokenTransfering?.call(order);
                  break;
                case 'SUCCESS':
                  // if (order.orderType == 'SELL' || order.orderType == 'BUY') {
                  onListenActionSuccess?.call(order);
                  // }
                  break;
                case 'FAILED':
                  if (order.orderType == 'SELL' || order.orderType == 'BUY') {
                    onListenActionSuccess?.call(order);
                  } else {
                    onListenActionFailed?.call(order);
                  }
                  break;

                case 'CANCELED':
                  if (order.orderType == 'SELL' || order.orderType == 'BUY') {
                    onListenActionSuccess?.call(order);
                  } else {
                    onListenActionFailed?.call(order);
                  }
                  break;
                default:
              }
            } else {
              switch (order.status) {
                case 'PENDING':
                  // NEW BUY ORDER
                  onListenActionPendingOrder?.call(order);
                  break;
                case 'TOKEN_LOCKED':
                  // disable buy order
                  if (order.orderType == 'BUY') {
                    order.isDisable = true;
                  }
                  // NEW SELL ORDER
                  onListenActionOtherTokenLocked?.call(order);
                  break;
                case 'ACCEPTED':
                  // disable sell order
                  if (order.orderType == 'SELL') {
                    order.isDisable = true;
                    onListenActionOtherAccepted?.call(order);
                  }
                  break;
              }
            }
          }
        }
      }
    }, onDone: () {
      log('WebSocket connection closed by the server');
      closeConnection(socket);
    }, onError: (error) {
      log('WebSocket error: $error');
      closeConnection(socket);
    });
  } catch (e) {
    log('Error establishing a WebSocket connection: $e');
    closeConnection(socket);
  }
}

void send(String message, WebSocket socket) {
  try {
    socket.send(message);
  } catch (e) {
    log('Error establishing a WebSocket connection: $e');
    closeConnection(socket);
  }
}

Map<String, dynamic> decodePayload(String data) {
  // final regex = RegExp(r'payload: ([\w+=]+)}');
  // final match = regex.firstMatch(data);
  // print('match');
  // print(match);

  try {
//  if (match != null) {
    // final base64Payload = match.group(1);
    // if (base64Payload != null) {
    final decodedBytes = base64.decode(data);
    final decodedString = utf8.decode(decodedBytes);
    final decodedJson = json.decode(decodedString);
    // print('decodedJson: \n ${decodedJson.toString()}');
    return decodedJson;
  } catch (e) {
    print('ERROR onListenOrder (decodePayload): ${e.toString}');
    return {};
  }
}

void closeConnection(WebSocket? socket) {
  socket?.close(1000, 'CLOSE_NORMAL');
}

Future<String> _blobToString(html.Blob blob) async {
  final reader = FileReader();
  final completer = Completer<String>();

  reader.onLoadEnd.listen((event) {
    completer.complete(reader.result as String);
  });

  reader.onError.listen((event) {
    completer.completeError('Error reading Blob as String');
  });

  reader.readAsText(blob);

  return completer.future;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

class FFAppState {
  bool openWs = true;
  String LPUuid = '';
}
