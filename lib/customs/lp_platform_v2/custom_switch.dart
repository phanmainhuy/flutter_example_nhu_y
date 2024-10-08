import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CustomSwitchWidget(
          width: 40,
          height: 20,
          initValue: true,
          activeColor: Colors.blue,
          inactiveColor: Colors.blueGrey,
          toggleSize: 18,
          borderRadius: 30,
        ),
      ),
    );
  }
}

class CustomSwitchWidget extends StatefulWidget {
  final double width;
  final double height;
  final bool? initValue;

  final Color? activeColor;
  final Color? inactiveColor;
  final double? toggleSize;
  final double? borderRadius;

  const CustomSwitchWidget({
    super.key,
    required this.width,
    required this.height,
    required this.initValue,
    this.activeColor,
    this.inactiveColor,
    this.toggleSize,
    this.borderRadius,
  });

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    bool status = widget.initValue ?? false;
    return Center(
      child: FlutterSwitch(
        width: widget.width, // 40.0
        height: widget.height, // 20.0
        valueFontSize: 12.0,
        toggleSize: widget.toggleSize ?? 18.0, // 18.0
        value: status,
        borderRadius: widget.borderRadius ?? 30.0, // 30.0
        activeColor: widget.activeColor ?? Colors.green,
        inactiveColor: widget.inactiveColor ?? Colors.grey,
        padding: 1,
        onToggle: (val) {
          setState(() {
            status = val;
          });
        },
      ),
    );
  }
}
