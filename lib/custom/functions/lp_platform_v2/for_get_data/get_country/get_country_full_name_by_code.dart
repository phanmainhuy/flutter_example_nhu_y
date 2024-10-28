import 'package:flutter_example_nhuy/model/country_image_option_model_struct.dart';

String getCountryFullNameByCode(String? shortName) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (shortName == '' || shortName == null) {
      return '';
    }

    dynamic data = [
      {
        "id": "1",
        "name": "TH",
        "fullName": "Thailand",
        "imagePath": "8s93ijpg0y7n/1.thailand-THB.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "2",
        "name": "PH",
        "fullName": "Philippines",
        "imagePath": "32cbpo0perwi/2.philippines-PHP.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "3",
        "name": "MY",
        "fullName": "Malaysia",
        "imagePath": "djjn31322hxz/3.myanmar-MYR.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "4",
        "name": "SG",
        "fullName": "Singapore",
        "imagePath": "42femq00xqsv/4.singapore-SGD.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "5",
        "name": "KH",
        "fullName": "Cambodia",
        "imagePath": "mvcjna9x2t8w/5.cambodia-KHR.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "6",
        "name": "VN",
        "fullName": "Vietnam",
        "imagePath": "ehaj67llhqfs/6.vietnam-VND.png",
        "isSelected": true,
        "isDisplay": false
      },
      {
        "id": "7",
        "name": "CN",
        "fullName": "China",
        "imagePath": "gobqrid7byr6/7.china-CNY.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "8",
        "name": "HK",
        "fullName": "Hong Kong",
        "imagePath": "246qdpq4hqaa/8.hongkong-HKD.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "9",
        "name": "JP",
        "fullName": "Japan",
        "imagePath": "e1pq2s22ipu6/9.japan-JPY.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "10",
        "name": "KR",
        "fullName": "South Korea",
        "imagePath": "mc4dazpv0snx/10.korea-KRW.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "11",
        "name": "ID",
        "fullName": "Indonesia",
        "imagePath": "xfwy6xbuk1aa/11.indonesia-IDR.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "12",
        "name": "CA",
        "fullName": "Canada",
        "imagePath": "thdm4jhufh3s/12.canada-CAD.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "13",
        "name": "AU",
        "fullName": "Australia",
        "imagePath": "26ogmrtk8zlm/13.australia-AUD.png",
        "isSelected": false,
        "isDisplay": false
      },
      {
        "id": "14",
        "name": "SA",
        "fullName": "Macao",
        "imagePath": "0xly0pcqix8p/14.macao-SAR.png",
        "isSelected": false,
        "isDisplay": false
      }
    ];

    final listCountry = (data as List<dynamic>)
        .map((item) => CountryImageOptionModelStruct.fromMap(item))
        .toList();

    for (var country in listCountry) {
      if (country.name == shortName) {
        return country.fullName;
      }
    }

    return '';
  } catch (e) {
    print('ERROR getCountryFullNameByCode: ${e.toString()}');
    return '';
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
