import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/rendering.dart';
import 'dart:html' as html;

class QRCodeRenderDownloadWidget extends StatefulWidget {
  const QRCodeRenderDownloadWidget({
    super.key,
    this.width,
    this.height,
    required this.data,
    this.btnDownloadTextColor,
    this.btnDownloadText,
    this.imgDownloadName,
    this.btnDownloadTextSize,
  });

  final double? width;
  final double? height;
  final String data;
  final Color? btnDownloadTextColor;
  final String? btnDownloadText;
  final String? imgDownloadName;
  final double? btnDownloadTextSize;

  @override
  State<QRCodeRenderDownloadWidget> createState() =>
      _QRCodeRenderDownloadWidgetState();
}

class _QRCodeRenderDownloadWidgetState
    extends State<QRCodeRenderDownloadWidget> {
  GlobalKey globalKey = GlobalKey();
  late QrPainter _painter;

  @override
  Widget build(BuildContext context) {
    final dimension = max<double>(widget.width ?? 200, widget.height ?? 200);
    _painter = QrPainter(
      errorCorrectionLevel: QrErrorCorrectLevel.H,
      data: widget.data,
      version: QrVersions.auto,
      emptyColor: Colors.white,
    );

    return Column(
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: widget.width!,
          height: widget.height!,
          child: QrImageView(
            data: widget.data,
            version: QrVersions.auto,
            size: dimension,
            backgroundColor: Colors.white,
            gapless: false,
          ),
        ),
        const SizedBox(height: 5),
        GestureDetector(
          onTap: _capturePng,
          child: Container(
            color: Colors.blueAccent,
            width: widget.width,
            child: Center(
              child: Text(
                widget.btnDownloadText ?? 'Save QR Code',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget.btnDownloadTextColor ?? Colors.black,
                  fontSize: widget.btnDownloadTextSize ?? 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _capturePng() async {
    final picData = await _painter.toImageData((3 * 100).toDouble(),
        format: ImageByteFormat.png);
    await writeToFile(picData!);
  }

  Future<void> writeToFile(ByteData data) async {
    final bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.document.createElement('a') as html.AnchorElement
      ..href = url
      ..style.display = 'none'
      ..download = '${widget.imgDownloadName ?? 'qr_code'}.png';
    html.document.body?.children.add(anchor);

    anchor.click();

    html.document.body?.children.remove(anchor);
    html.Url.revokeObjectUrl(url);
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('QR Code Generator')),
      body: const QRCodeRenderDownloadWidget(
        data: 'Nhu Y test',
        width: 150,
        height: 150,
        imgDownloadName: 'NhuYDownload',
        btnDownloadTextSize: 15,
      ),
    ),
  ));
}
