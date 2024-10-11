import 'package:flutter/material.dart';

class CustomTooltipWidget extends StatelessWidget {
  final String tooltipMessage;
  final Widget child;

  const CustomTooltipWidget({
    Key? key,
    required this.tooltipMessage,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipMessage,
      decoration: BoxDecoration(
        color: Color(0xFF3C3E44), // Custom background color
        borderRadius: BorderRadius.circular(8.0), // Optional: Rounded corners
      ),
      textStyle: TextStyle(
        color: Colors.white, // Tooltip text color
      ),
      child: child,
    );
  }
}

// Example usage
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Tooltip Example'),
      ),
      body: Center(
        child: CustomTooltipWidget(
          tooltipMessage: 'This is a custom tooltip',
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Hover over me'),
          ),
        ),
      ),
    );
  }
}
