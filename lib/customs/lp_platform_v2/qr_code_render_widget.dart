import 'dart:math';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: QRCodeRenderWidget(
          width: 400,
          height: 400,
          data: '123123123',
        ),
      ),
    );
  }
}

class QRCodeRenderWidget extends StatefulWidget {
  const QRCodeRenderWidget({
    super.key,
    this.width,
    this.height,
    required this.data,
  });

  final double? width;
  final double? height;
  final String data;

  @override
  State<QRCodeRenderWidget> createState() => _QRCodeRenderWidgetState();
}

class _QRCodeRenderWidgetState extends State<QRCodeRenderWidget> {
  @override
  Widget build(BuildContext context) {
    final dimension = max<double>(this.widget.width!, this.widget.height!);

    return Container(
      width: dimension,
      height: dimension,
      child: QrImageView(
        data: this.widget.data,
        version: QrVersions.auto,
        size: dimension,
        backgroundColor: Colors.white,
        // eyeStyle: new QrEyeStyle(
        //   color: Colors.black,
        // ),
        gapless: false,
      ),
    );
  }
}
