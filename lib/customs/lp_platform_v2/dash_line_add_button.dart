import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class DashLineAddButtonWidget extends StatelessWidget {
  const DashLineAddButtonWidget({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.dashLength,
    this.dashSpace,
    this.borderColor,
    this.iconColor,
    this.iconSize,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? dashLength;
  final double? dashSpace;
  final Color? borderColor;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: borderColor ?? Colors.grey,
      strokeWidth: 1,
      dashPattern: [dashLength ?? 6, dashSpace ?? 3], // dash line length, space
      borderType: BorderType.RRect,
      radius: Radius.circular(radius ?? 4),
      child: SizedBox(
        width: width ?? 40,
        height: height ?? 32,
        child: Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, top: 4, bottom: 4),
          child: Icon(
            Icons.add,
            color: iconColor ?? Colors.grey,
            size: iconSize ?? 24,
          ),
        ),
      ),
    );
  }
}
