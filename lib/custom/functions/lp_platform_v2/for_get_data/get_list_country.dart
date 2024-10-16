import 'package:flutter_example_nhuy/model/country_image_option_model_struct.dart';

List<CountryImageOptionModelStruct> getListCountry() {
  /// MODIFY CODE ONLY BELOW THIS LINE
  dynamic data = [
    {
      "id": "1",
      "name": "TH",
      "imagePath": "8s93ijpg0y7n/1.thailand-THB.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "2",
      "name": "PH",
      "imagePath": "32cbpo0perwi/2.philippines-PHP.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "3",
      "name": "MY",
      "imagePath": "djjn31322hxz/3.myanmar-MYR.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "4",
      "name": "SG",
      "imagePath": "42femq00xqsv/4.singapore-SGD.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "5",
      "name": "KH",
      "imagePath": "mvcjna9x2t8w/5.cambodia-KHR.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "6",
      "name": "VN",
      "imagePath": "ehaj67llhqfs/6.vietnam-VND.png",
      "isSelected": true,
      "isDisplay": false
    },
    {
      "id": "7",
      "name": "CN",
      "imagePath": "gobqrid7byr6/7.china-CNY.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "8",
      "name": "HK",
      "imagePath": "246qdpq4hqaa/8.hongkong-HKD.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "9",
      "name": "JP",
      "imagePath": "e1pq2s22ipu6/9.japan-JPY.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "10",
      "name": "KR",
      "imagePath": "mc4dazpv0snx/10.korea-KRW.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "11",
      "name": "ID",
      "imagePath": "xfwy6xbuk1aa/11.indonesia-IDR.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "12",
      "name": "CA",
      "imagePath": "thdm4jhufh3s/12.canada-CAD.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "13",
      "name": "AU",
      "imagePath": "26ogmrtk8zlm/13.australia-AUD.png",
      "isSelected": false,
      "isDisplay": false
    },
    {
      "id": "14",
      "name": "SA",
      "imagePath": "0xly0pcqix8p/14.macao-SAR.png",
      "isSelected": false,
      "isDisplay": false
    }
  ];

  final listCountry = (data as List<dynamic>)
      .map((item) => CountryImageOptionModelStruct.fromMap(item))
      .toList();

  return listCountry;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
