import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

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
            selectedData: 'VND_USDT',
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
  String? selectedValue = 'VND_USDT'; // Corresponds to 'VND_USDT'

  IconData nextIcon = Icons.arrow_forward_ios_outlined;
  IconData downIcon = Icons.arrow_downward_outlined;

  @override
  Widget build(BuildContext context) {
    selectedValue = widget.selectedData;

    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        items: imageData
            .map((item) => DropdownMenuItem<String>(
                  value: item['label'],
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
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/dashboardlp-7r9qca/assets/';

List<Map<String, String>> imageData = [
  {
    'id': '1',
    'label': 'THB_USDT',
    'image': 'nd2oexwyrzj0/1.thailand-THB.png',
  },
  {
    'id': '2',
    'label': 'PHP_USDT',
    'image': 'q2raub5nc7ty/2.philippines-PHP.png'
  },
  {
    'id': '3',
    'label': 'MYR_USDT',
    'image': 'tc3t7a7o73sz/3.myanmar-MYR.png',
  },
  {
    'id': '4',
    'label': 'SGD_USDT',
    'image': '75pdenhkrpul/4.singapore-SGD.png',
  },
  {
    'id': '5',
    'label': 'KHR_USDT',
    'image': '7jkvb1kfl0yp/5.cambodia-KHR.png',
  },
  {
    'id': '6',
    'label': 'VND_USDT',
    'image': 'yyfl86wq2cu9/6.vietnam-VND.png',
  },
  {
    'id': '7',
    'label': 'CNY_USDT',
    'image': 'r88lu2ok1txd/7.china-CNY.png',
  },
  {
    'id': '8',
    'label': 'HKD_USDT',
    'image': '3t6n4jdysdt8/8.hongkong-HKD.png',
  },
  {
    'id': '9',
    'label': 'JPY_USDT',
    'image': 'fw22anz8d1t8/9.japan-JPY.png',
  },
  {
    'id': '10',
    'label': 'KRW_USDT',
    'image': '4fv10kxgll8r/10.korea-KRW.png',
  },
  {
    'id': '11',
    'label': 'IDR_USDT',
    'image': 'bz2aw113guxa/11.indonesia-IDR.png'
  },
  {
    'id': '12',
    'label': 'CAD_USDT',
    'image': '7z7c9qtam0sj/12.canada-CAD.png',
  },
  {
    'id': '13',
    'label': 'AUD_USDT',
    'image': 'nx8ovp8koufx/13.australia-AUD.png'
  },
  {
    'id': '14',
    'label': 'SAR_USDT',
    'image': 'br3b75v8shjl/14.macao-SAR.png',
  },
];
