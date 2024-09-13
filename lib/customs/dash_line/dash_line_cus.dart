import 'package:flutter/material.dart';

class DashedLineWidget extends StatelessWidget {
  const DashedLineWidget({
    super.key,
    this.width,
    this.height,
    required this.dashWidth,
    required this.dashSpace,
    this.color,
  });
  final double? width;
  final double? height;
  final double dashWidth;
  final double dashSpace;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size:
          const Size(double.infinity, 2), // Width and height of the dashed line
      painter: DashedLinePainter(
        0,
        0,
        dashWidth,
        dashSpace,
        color,
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  const DashedLinePainter(
    this.width,
    this.height,
    this.dashWidth,
    this.dashSpace,
    this.color,
  );
  final double width;
  final double height;
  final double dashWidth;
  final double dashSpace;
  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color ?? Colors.grey
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Dashed Line Example')),
      body: Center(
        child: DashedLineWidget(
          width: 0, height: 0, dashSpace: 3.0, dashWidth: 9.0,
          color: Colors.grey, // You can change the color here
        ),
      ),
    ),
  ));
}
