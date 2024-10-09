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
    required this.btnDownloadHeight,
    this.btnDownloadWidth,
    this.btnDownloadColor,
    this.btnDownloadTextColor,
    this.btnDownloadText,
    this.imgDownloadName,
    this.btnDownloadBorderRadius,
  });

  final double? width;
  final double? height;
  final String data;
  final Color? btnDownloadColor;
  final Color? btnDownloadTextColor;
  final String? btnDownloadText;
  final double? btnDownloadBorderRadius;
  final double? btnDownloadWidth;
  final double btnDownloadHeight;
  final String? imgDownloadName;

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
          width: widget.width! - (widget.btnDownloadHeight + 10),
          height: widget.height! - (widget.btnDownloadHeight + 10),
          child: QrImageView(
            data: widget.data,
            version: QrVersions.auto,
            size: dimension,
            backgroundColor: Colors.white,
            gapless: false,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: widget.btnDownloadWidth,
          height: widget.btnDownloadHeight,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      widget.btnDownloadBorderRadius ?? 18.0),
                  // side: BorderSide(color: Colors.red),
                ),
              ),

              backgroundColor: MaterialStatePropertyAll<Color>(
                  widget.btnDownloadColor ?? Colors.black), // Background color
            ),
            onPressed: _capturePng,
            child: Text(
              widget.btnDownloadText ?? 'Save QR Code',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget.btnDownloadTextColor ?? Colors.white),
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
        width: 200,
        height: 200,
        btnDownloadHeight: 30,
        btnDownloadWidth: 200,
        imgDownloadName: 'NhuYDownload',
      ),
    ),
  ));
}
