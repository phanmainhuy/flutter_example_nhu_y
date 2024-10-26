import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bank Info Card')),
        body: BankCurrencyCardWidget(
          currencies: ["VND", "USD", "CNY", "THB", "AUD"],
          currenciesDefault: ["VND", 'CNY'],
          currenciesAlwaysUse: ["VND"],
        ),
      ),
    );
  }
}

class BankCurrencyCardWidget extends StatelessWidget {
  const BankCurrencyCardWidget({
    super.key,
    required this.currencies,
    required this.currenciesDefault,
    required this.currenciesAlwaysUse,
    this.width,
    this.height,
    this.textColor,
    this.textAlwaysUseColor,
    this.defaultColor,
    this.normalColor,
  });

  final List<String> currencies;
  final List<String> currenciesDefault;
  final List<String> currenciesAlwaysUse;
  final double? width;
  final double? height;
  final Color? textColor;
  final Color? textAlwaysUseColor;
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
            bool isAlwaysUse = currenciesAlwaysUse.contains(currency);
            bool isDefault = currenciesDefault.contains(currency);

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
                  if (isAlwaysUse)
                    Text(
                      ' • Always use',
                      style: TextStyle(
                        color: textAlwaysUseColor ?? Colors.black,
                        fontSize: 10,
                      ),
                    ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(
                  color: isAlwaysUse || isDefault
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
