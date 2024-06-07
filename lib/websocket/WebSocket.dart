import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:html' as html;
import 'package:flutter_example_helen/util/const.dart';
import 'package:web_socket_client/web_socket_client.dart';

void main() {
  socket('Nhu Y ping');
}

class SocketSingleTon {
  SocketSingleTon._();
  static final SocketSingleTon _instance = SocketSingleTon._();
  static SocketSingleTon getInstance() {
    return _instance;
  }

  WebSocket? socket;

  void connect() {
    try {
      // Create a WebSocket client.
      socket = WebSocket(Uri.parse(
          '${Constant.urlSocket}?token=${Constant.TokenUser}')); //'wss://echo.websocket.org?token='
      print('Attempting to connect to WebSocket');

      // Handle the connection state.
      socket!.connection.listen((state) {
        if (state is Connected) {
          print('WebSocket connected');
          // FFAppState().IsSocketOpen = true;
        } else if (state is Disconnected) {
          print('WebSocket disconnected');
          // FFAppState().IsSocketOpen = false;
          socket!.close();
        }
        // Handle other states like reconnecting, etc.
      });

      // Listen to messages from the server.
      socket!.messages.listen((message) async {
        try {
          if (message is String) {
            print('......message...... $message');
          } else {
            print('......message not string......');
            String decodedMessage = await _blobToString(message);
            final Map<String, dynamic> parsedJson = json.decode(decodedMessage);
            List<Map<String, dynamic>> result = [];
            result.add(parsedJson);
            // FFAppState().ListSocketData = result;
            print('--65.parsedJson--');
            print(result);
          }
        } catch (e) {
          print('Error handling the message: $e');
          // FFAppState().IsSocketOpen = false;
          socket!.close();
        }
      }, onDone: () {
        print('WebSocket connection closed by the server');
        // FFAppState().IsSocketOpen = false;
        socket!.close();
      }, onError: (error) {
        print('WebSocket error: $error');
        // FFAppState().IsSocketOpen = false;
        socket!.close();
      });
    } catch (e) {
      print('Error establishing a WebSocket connection: $e');
      // FFAppState().IsSocketOpen = false;
      socket!.close();
    }
  }

  void send(String message) {
    try {
      socket!.send(message);
    } catch (e) {
      print('Error establishing a WebSocket connection: $e');
      // FFAppState().IsSocketOpen = false;
      socket?.close();
    }
  }
}

Future<void> socket(String message) async {
  try {
    if (SocketSingleTon.getInstance().socket == null) {
      SocketSingleTon.getInstance().connect();
    }
    SocketSingleTon.getInstance().send(message);
  } catch (e) {
    print("Error sendMessage $e");
  }
}

Future<String> _blobToString(html.Blob blob) async {
  final reader = html.FileReader();
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


// document 
// https://stackoverflow.com/questions/35164170/dart-html-convert-blob-to-file