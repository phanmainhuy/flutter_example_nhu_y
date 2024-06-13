import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:html' as html;
import 'package:flutter_example_helen/util/app_state.dart';
import 'package:web_socket_client/web_socket_client.dart';

void main() {
  try {
    socket('Nhu Y ping');
  } catch (e) {
    print('---13---');
    print(e.toString());
  }
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
      String url = FFAppState().Ws;
      String token = FFAppState().TokenUser;

      // Create a WebSocket client.
      socket = WebSocket(Uri.parse(
          url + '?token=' + token)); //'wss://echo.websocket.org?token='
      print('Attempting to connect to WebSocket');

      // Handle the connection state.
      socket!.connection.listen((state) {
        print('---30---');
        print(state);
        if (state is Connected) {
          print('---35---');
          print('WebSocket connected');
          FFAppState().IsSocketOpen = true;
        } else if (state is Disconnected) {
          print('---38---');
          print('WebSocket disconnected');
          _closeConnection();
        } else if (state is Reconnecting) {
          print('---49---');
          print('state is Reconnecting');
        } else if (state is Reconnected) {
          print('---50---');
          print('state is Reconnected');
        } else if (state is Connecting) {
          print('---51---');
          print('state is Connecting');
        } else {
          print('---55---');
          print('Else state');
          print(state.toString());
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
    FFAppState().IsSocketOpen = false;
    socket?.close();
    // socket = null;
  }

  void send(String message) {
    try {
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
