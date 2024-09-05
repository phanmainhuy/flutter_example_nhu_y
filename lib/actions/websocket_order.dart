// Automatic FlutterFlow imports
import 'package:flutter_example_helen/model/order_data_item_struct.dart';
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
  Future Function(OrderDataItemStruct? order)? onListenActionAccept,
  String token,
  String message,
  String urlWS,
  Future Function(OrderDataItemStruct? order)? onListenActionTokenLocked,
  Future Function(OrderDataItemStruct? order)? onListenActionLpConfirmed,
  Future Function(OrderDataItemStruct? order)? onListenTokenTransfering,
  Future Function(OrderDataItemStruct? order)? onListenActionSuccess,
  Future Function(OrderDataItemStruct? order)? onListenActionFailed,
) async {
  final socket = WebSocket('$urlWS?token=$token');
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
      if (message is String) {
      } else {
        String decodedMessage = await _blobToString(message.data);
        final Map<String, dynamic> parsedJson = json.decode(decodedMessage);
        List<Map<String, dynamic>> result = [];
        result.add(parsedJson);
        print('--48.parsedJson[topic]');
        print(parsedJson['topic']);
        // print(int.parse(parsedJson['topic']) == 6);
        print(parsedJson['topic'].runtimeType);
        print(parsedJson['topic'] == 6);
        if (parsedJson['topic'] == 6) {
          final decode = decodePayload(result.toString());
          print('---49.onListenOrder---');
          print('topic 6');
          print(parsedJson.toString());
          print(decode.toString());
          //replace orderstruct for testordersocketreplystruct
          final order = OrderDataItemStruct.fromMap(decode);
          //create switch case for state to do action per state
          switch (order.status) {
            case 'ACCEPTED':
              onListenActionAccept?.call(order);
              break;
            case 'TOKEN_LOCKED':
              onListenActionTokenLocked?.call(order);
              break;
            case 'LP_CONFIRMED':
              onListenActionLpConfirmed?.call(order);
              break;
            case 'TRANSFERING_TOKEN':
              onListenTokenTransfering?.call(order);
              closeConnection(socket);
              break;
            case 'SUCCESS':
              onListenActionSuccess?.call(order);
              break;
            case 'FAILED':
              onListenActionFailed?.call(order);
              break;
            default:
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
  final regex = RegExp(r'payload: ([\w+=]+)}');
  final match = regex.firstMatch(data);

  if (match != null) {
    final base64Payload = match.group(1);
    if (base64Payload != null) {
      final decodedBytes = base64.decode(base64Payload);
      final decodedString = utf8.decode(decodedBytes);
      final decodedJson = json.decode(decodedString);
      return decodedJson;
    }
  }
  return {};
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