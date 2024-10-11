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
  const CustomSwitchWidget({
    super.key,
    this.width,
    this.height,
    this.initValue,
    this.activeColor,
    this.inactiveColor,
    this.toggleSize,
    this.borderRadius,
    this.onToggle,
  });

  final double? width;
  final double? height;
  final bool? initValue;

  final Color? activeColor;
  final Color? inactiveColor;
  final double? toggleSize;
  final double? borderRadius;
  final Function(bool value)? onToggle;
  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  late bool status;

  @override
  void initState() {
    super.initState();
    status = widget.initValue ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: widget.width ?? 40,
      height: widget.height ?? 20,
      valueFontSize: 12.0,
      toggleSize: widget.toggleSize ?? 18.0,
      value: status,
      borderRadius: widget.borderRadius ?? 30.0,
      activeColor: widget.activeColor ?? Colors.green,
      inactiveColor: widget.inactiveColor ?? Colors.grey,
      padding: 1,
      onToggle: (val) {
        setState(() {
          status = val;
          widget.onToggle?.call(val);
        });
      },
    );
  }
}
