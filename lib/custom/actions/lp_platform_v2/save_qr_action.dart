import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/rendering.dart';
import 'dart:html' as html;
import 'dart:typed_data';
import 'dart:ui';

Future saveQRCodeAction(
  String data,
  String imageName,
) async {
  final _painter = QrPainter(
    errorCorrectionLevel: QrErrorCorrectLevel.H,
    data: data,
    version: QrVersions.auto,
    emptyColor: Colors.white,
  );
  final picData = await _painter.toImageData((3 * 100).toDouble(),
      format: ImageByteFormat.png);
  final bytes =
      picData?.buffer.asUint8List(picData.offsetInBytes, picData.lengthInBytes);
  final blob = html.Blob([bytes]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.document.createElement('a') as html.AnchorElement
    ..href = url
    ..style.display = 'none'
    ..download = '$imageName.png';
  html.document.body?.children.add(anchor);

  anchor.click();

  html.document.body?.children.remove(anchor);
  html.Url.revokeObjectUrl(url);
}
