import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bank Info Card')),
        body: const CountryCurrenciesCardsWidget(
          currencies: ["VND", "USD", "CNY", "THB", "AUD"],
          defaultCurrency: "VND",
        ),
      ),
    );
  }
}

class CountryCurrenciesCardsWidget extends StatelessWidget {
  const CountryCurrenciesCardsWidget({
    super.key,
    required this.currencies,
    required this.defaultCurrency,
    this.width,
    this.height,
    this.textColor,
    this.defaultColor,
    this.normalColor,
  });

  final List<String> currencies;
  final String defaultCurrency;
  final double? width;
  final double? height;
  final Color? textColor;
  final Color? defaultColor;
  final Color? normalColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: currencies.map((currency) {
            bool isDefault = (currency == defaultCurrency);
            return Chip(
              label: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currency,
                    style: TextStyle(
                      color: textColor ?? Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(
                  color: isDefault
                      ? (defaultColor ?? Colors.orange)
                      : (normalColor ?? Colors.grey),
                ),
              ),
              backgroundColor: Colors.transparent,
            );
          }).toList(),
        ),
      ],
    );
  }
}
