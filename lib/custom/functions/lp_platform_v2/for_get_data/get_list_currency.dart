import 'package:flutter_example_nhuy/model/currency_image_option_model_struct%20copy.dart';

List<CurrencyImageOptionModelStruct> getListCurrency() {
  /// MODIFY CODE ONLY BELOW THIS LINE

  dynamic data = [
    {
      "id": "1",
      "name": "THB",
      "imagePath": "8s93ijpg0y7n/1.thailand-THB.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "2",
      "name": "PHP",
      "imagePath": "32cbpo0perwi/2.philippines-PHP.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "3",
      "name": "MYR",
      "imagePath": "djjn31322hxz/3.myanmar-MYR.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "4",
      "name": "SGD",
      "imagePath": "42femq00xqsv/4.singapore-SGD.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "5",
      "name": "KHR",
      "imagePath": "mvcjna9x2t8w/5.cambodia-KHR.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "6",
      "name": "VND",
      "imagePath": "ehaj67llhqfs/6.vietnam-VND.png",
      "isSelected": true,
      "isDisplay": false
    },
    {
      "id": "7",
      "name": "CNY",
      "imagePath": "gobqrid7byr6/7.china-CNY.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "8",
      "name": "HKD",
      "imagePath": "246qdpq4hqaa/8.hongkong-HKD.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "9",
      "name": "JPY",
      "imagePath": "e1pq2s22ipu6/9.japan-JPY.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "10",
      "name": "KRW",
      "imagePath": "mc4dazpv0snx/10.korea-KRW.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "11",
      "name": "IDR",
      "imagePath": "xfwy6xbuk1aa/11.indonesia-IDR.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "12",
      "name": "CAD",
      "imagePath": "thdm4jhufh3s/12.canada-CAD.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "13",
      "name": "AUD",
      "imagePath": "26ogmrtk8zlm/13.australia-AUD.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "14",
      "name": "SAR",
      "imagePath": "0xly0pcqix8p/14.macao-SAR.png",
      "isSelected": false,
      "isDisplay": false
    }
  ];

  final listCurrency = (data as List<dynamic>)
      .map((item) => CurrencyImageOptionModelStruct.fromMap(item))
      .toList();

  return listCurrency;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
