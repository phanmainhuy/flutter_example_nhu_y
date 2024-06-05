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
      socket = WebSocket(
          Uri.parse('${Constant.urlSocket}?token=${Constant.TokenUser}'));
      print('Attempting to connect to WebSocket');

      socket!.connection.listen((state) {
        if (state is Connected) {
          print('WebSocket connected');
        } else if (state is Disconnected) {
          print('WebSocket disconnected');
        }
      });

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
            print('===48===');
            print('parsedJson');
            print(result);
          }
        } catch (e) {
          print('Error handling the message: $e');
        }
      }, onDone: () {
        print('WebSocket connection closed by the server');
      }, onError: (error) {
        print('WebSocket error: $error');
      });
    } catch (e) {
      print('Error establishing a WebSocket connection: $e');
      socket!.close();
    }
  }

  void send(String message) {
    try {
      socket!.send(message);
    } catch (e) {
      print('Error establishing a WebSocket connection: $e');
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