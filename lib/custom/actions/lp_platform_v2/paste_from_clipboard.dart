import 'package:clipboard/clipboard.dart';

import 'package:flutter/services.dart';

void checkClipboardPermission() async {
  try {
    await Clipboard.getData(Clipboard.kTextPlain);
    print('Clipboard access granted');
  } catch (e) {
    print('Clipboard access denied: $e');
  }
}

Future<String?> pasteFromClipboard() async {
  try {
    checkClipboardPermission();
    final text = await FlutterClipboard.paste();
    print('Clipboard text: $text');
    return text;
  } catch (e) {
    print('Failed to read from clipboard: $e');
    return '';
  }
}
