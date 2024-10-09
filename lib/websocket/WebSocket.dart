import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:html' show WebSocket, FileReader;
import 'dart:html' as html;
import 'package:flutter_example_nhuy/util/app_state.dart';

void main() {
  try {
    socket('Nhu Y ping');
  } catch (e) {
    print('---13---');
    print(e.toString());
  }
}

class SocketSingleTon {
  int numb = 0;
  SocketSingleTon._();
  static final SocketSingleTon _instance = SocketSingleTon._();
  static SocketSingleTon getInstance() {
    return _instance;
  }

  WebSocket? socket;

  void connect(String message) {
    try {
      String url = FFAppState().Ws;
      String token = FFAppState().TokenUser;

      // Create a WebSocket client.
      socket = WebSocket('$url?token=$token');
      print('Attempting to connect to WebSocket');

      // Handle the connection state.
      socket!.onOpen.listen((state) {
        print('---30.TYPE---');
        print(state.type);
        String stateType = state.type;
        send(message);
        if (stateType == 'open') {
          print('WebSocket connected');
        }
        // Handle other states like reconnecting, etc.
      });

      // Listen to messages from the server.
      socket!.onMessage.listen((message) async {
        try {
          numb++;
          print('number: ${numb}');
          if (message is String) {
            print('......message...... $message');
          } else {
            print('......message not string......');
            String decodedMessage = await _blobToString(message.data);
            final Map<String, dynamic> parsedJson = json.decode(decodedMessage);
            List<Map<String, dynamic>> result = [];
            result.add(parsedJson);
            FFAppState().ListSocketData = result;
            print('--65.parsedJson--');
            print(result);
          }
        } catch (e) {
          print('Error handling the message: ');
          print(e.toString());
          _closeConnection();
        }
      }, onDone: () {
        print('---73---');
        print('WebSocket connection closed by the server');
        _closeConnection();
      }, onError: (error) {
        print('---71---');
        print('WebSocket error: $error');
        _closeConnection();
      });
    } catch (e) {
      print('---75---');
      print('Error establishing a WebSocket connection: $e');
      _closeConnection();
    }
  }

  void _closeConnection() {
    numb = 0;
    FFAppState().IsSocketOpen = false;
    socket?.close(1000, 'CLOSE_NORMAL');
  }

  void send(String message) {
    try {
      print('---131---');
      socket!.send(message);
    } catch (e) {
      print('Error establishing a WebSocket connection: $e');
      _closeConnection();
    }
  }
}

Future<void> socket(String message) async {
  try {
    if (SocketSingleTon.getInstance().socket == null) {
      SocketSingleTon.getInstance().connect(message);
    }
    // SocketSingleTon.getInstance().send(message);
  } catch (e) {
    print("Error sendMessage $e");
  }
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
