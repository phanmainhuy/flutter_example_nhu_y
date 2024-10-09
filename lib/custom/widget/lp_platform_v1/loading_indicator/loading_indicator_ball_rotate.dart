import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('QR Code Generator')),
      body: Center(
        child: const LoadingIndicatorWidget(
          width: 50, // Adjusted width for better visibility
          height: 50, // Adjusted height for better visibility
        ),
      ),
    ),
  ));
}

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.transparent,
      child: const LoadingIndicator(
        indicatorType: Indicator.ballRotateChase,
        colors: [
          Colors.red,
          Colors.green,
          Color.fromARGB(255, 40, 50, 58),
          Colors.yellow,
          Colors.orange,
          Colors.purple,
        ],
        strokeWidth: 2,
        backgroundColor: Colors.transparent,
        pathBackgroundColor: Colors.black,
      ),
    );
  }
}
