// {
//             "Key": "",
//             "Id": "",
//             "Rev": "",
//             "uuid": "14f01f0f-50e6-4dca-ad3e-181c67504626",
//             "userId": "f0331587-ddde-43ff-a434-fccc7d2fcac6",
//             "bankDetail": {
//                 "bankCountry": "VN",
//                 "bankName": "",
//                 "bankBin": "970429",
//                 "bankHolder": "Legal Name nek",
//                 "bankNumber": "123123123313"
//             },
//             "createdAt": "2024-10-25T06:46:04Z",
//             "updatedAt": "2024-10-25T06:46:04Z",
//             "currencies": [
//                 "VND"
//             ],
//             "currenciesDefault": [
//                 "VND"
//             ],
//             "currenciesAlwaysUse": [
//                 "VND"
//             ]
//         }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bank Info Card')),
        body: BankCurrencyCardWidget(
          currencies: ['THB', 'JPY', 'CNY', 'VND'],
        ),
      ),
    );
  }
}

class BankCurrencyCardWidget extends StatelessWidget {
  const BankCurrencyCardWidget({
    super.key,
    required this.currencies,
  });

  final List<String> currencies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: currencies.map((currency) {
            return Chip(
              label: Text(
                '$currency • Always use',
                style: TextStyle(color: Colors.orange),
              ),
              shape: StadiumBorder(
                side: BorderSide(color: Colors.orange),
              ),
              backgroundColor: Colors.transparent,
            );
          }).toList(),
        ),
      ],
    );
  }
}
