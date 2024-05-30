import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropdownButton2 Demo',
      home: Scaffold(
        body: Center(
          child: DropDownFlagWidget(
            selectedData: '6',
            boldText: false,
            borderRadius: 12,
            // openMenuIcon: const Icon(Icons.ac_unit_outlined),
            // borderColor: Colors.yellow,
            // backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class DropDownFlagWidget extends StatefulWidget {
  DropDownFlagWidget({
    super.key,
    this.width,
    this.height,
    this.maxHeight,
    this.dropdownIcon,
    this.openMenuIcon,
    this.backgroundColor,
    this.borderColor,
    required this.boldText,
    this.fontSize,
    required this.selectedData,
    this.borderRadius,
  });

  final double? width;
  final double? height;
  final double? maxHeight;
  String selectedData;
  Widget? dropdownIcon;
  Widget? openMenuIcon;
  Color? backgroundColor;
  Color? borderColor;
  bool boldText;
  double? fontSize;
  double? borderRadius;

  @override
  State<DropDownFlagWidget> createState() => _DropDownFlagWidgetState();
}

class _DropDownFlagWidgetState extends State<DropDownFlagWidget> {
  String? selectedValue = '6'; // Corresponds to 'VND_USDT'

  IconData nextIcon = Icons.arrow_forward_ios_outlined;
  IconData downIcon = Icons.arrow_downward_outlined;

  @override
  void initState() {
    // TODO: implement initState

    dynamic x = imageData.map((item) => {
          print(item),
          print(item['id']),
          print(item['label']),
          print('$imagePath${item['image']}'),
          print('*' * 20),
        });
    print(x.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedValue = widget.selectedData;

    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        items: imageData
            .map((item) => DropdownMenuItem<String>(
                  value: item['id'],
                  child: Row(
                    children: [
                      Image.network(
                        '$imagePath${item['image']}',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        item['label']!.split('_')[0],
                        style: TextStyle(
                          fontSize: widget.fontSize ?? 14,
                          fontWeight: widget.boldText
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() {
            selectedValue = value;
            widget.selectedData = value!;
            // FFAppState().currencyPairID = value;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: widget.height ?? 35,
          width: widget.width ?? 110,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 20),
            border: Border.all(
              color: widget.borderColor ?? Colors.black26,
            ),
            color: widget.backgroundColor ?? Colors.white,
          ),
          elevation: 2,
        ),
        iconStyleData: IconStyleData(
          icon: widget.dropdownIcon ?? Icon(nextIcon),
          iconSize: 14,
          iconEnabledColor: Colors.black,
          iconDisabledColor: Colors.grey,
          openMenuIcon: widget.openMenuIcon ?? Icon(downIcon),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: widget.maxHeight ?? 200,
          width: widget.width ?? 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 20),
            color: Colors.white,
          ),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: WidgetStateProperty.all<double>(6),
            thumbVisibility: WidgetStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}

String imagePath =
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/cryptoorder-2t6vby/assets/';

List<Map<String, String>> imageData = [
  {
    'id': '1',
    'label': 'THB_USDT',
    'image': 'wzncrhi5qr5a/1.thailand-THB.png',
  },
  {
    'id': '2',
    'label': 'PHP_USDT',
    'image': 'jsvad1hxvzkr/2.philippines-PHP.png'
  },
  {
    'id': '3',
    'label': 'MYR_USDT',
    'image': '81k295on31go/3.myanmar-MYR.png',
  },
  {
    'id': '4',
    'label': 'SGD_USDT',
    'image': 'k6rw90k0bc75/4.singapore-SGD.png',
  },
  {
    'id': '5',
    'label': 'KHR_USDT',
    'image': '7mg7vdyv5r32/5.cambodia-KHR.jpeg',
  },
  {
    'id': '6',
    'label': 'VND_USDT',
    'image': 'p9ndn9jx3cvs/6.vietnam-VND.png',
  },
  {
    'id': '7',
    'label': 'CNY_USDT',
    'image': 'yanycwpcw2yh/7.china-CNY.png',
  },
  {
    'id': '8',
    'label': 'HKD_USDT',
    'image': 'qgkalsjtv9ou/8.hongkong-HKD.png',
  },
  {
    'id': '9',
    'label': 'JPY_USDT',
    'image': 'f2kozfk6m9tm/9.japan-JPY.png',
  },
  {
    'id': '10',
    'label': 'KRW_USDT',
    'image': 'tlyyxpnaxp2c/10.korea-KRW.png',
  },
  {
    'id': '11',
    'label': 'IDR_USDT',
    'image': 'hvjkw9y3widq/11.indonesia-IDR.png'
  },
  {
    'id': '12',
    'label': 'CAD_USDT',
    'image': '8zioqr8ww21n/12.canada-CAD.png',
  },
  {
    'id': '13',
    'label': 'AUD_USDT',
    'image': 's3dzv3l69wi5/13.australia-AUD.png'
  },
  {
    'id': '14',
    'label': 'SAR_USDT',
    'image': 'y74r9ppgx5gi/14.macao-SAR.png',
  },
];
