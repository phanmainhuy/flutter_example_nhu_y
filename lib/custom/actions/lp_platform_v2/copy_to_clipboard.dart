import 'package:flutter/services.dart';

Future<String?>? copyToClipboard() async {
  final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
  String? clipboardText = clipboardData?.text;
  print(clipboardText);
  return clipboardText;
}
