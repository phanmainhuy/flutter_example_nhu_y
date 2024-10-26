import 'dart:convert';

import 'package:flutter_example_nhuy/model/bank_country_option_model_struct.dart';

List<BankCountryOptionModelStruct> getListBankCountry() {
  /// MODIFY CODE ONLY BELOW THIS LINE

  dynamic bank = [
    {
      "code": "970400",
      "name": "Saigon Bank for Industry & Trade",
      "short_name": "SAIGONBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970403",
      "name": "Sai Gon Thuong Tin Joint- Stock Commercial Bank",
      "short_name": "SACOMBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970405",
      "name": "Vietnam Bank for Agriculture and Rural Development",
      "short_name": "AGRIBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970406",
      "name": "DONG A Joint- Stock Commercial Bank",
      "short_name": "DONGABANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970407",
      "name": "Viet Nam Technological and Joint- Stock Commercial Bank",
      "short_name": "TECHCOMBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970408",
      "name": "Global Petro Sole Member Limited Commercial Bank",
      "short_name": "GPBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970409",
      "name": "BAC A Joint-Stock Commercial Bank",
      "short_name": "BACABANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970410",
      "name": "Standard Chartered Bank (Vietnam) Limited",
      "short_name": "STANDARD_CHARTERED",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970412",
      "name": "Vietnam Public Joint-stock Commercial Bank",
      "short_name": "PVCOMBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970414",
      "name": "Ocean Commercial One Member Limited Liability Bank",
      "short_name": "OCEANBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970415",
      "name": "Vietnam Joint-stock Commercial Bank for Industry and Trade",
      "short_name": "VIETINBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970416",
      "name": "Asia Joint-stock Commercial Bank",
      "short_name": "ACB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970418",
      "name":
          "Joint-stock Commercial Bank for Investment and Development of Vietnam",
      "short_name": "BIDV",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970419",
      "name": "National Citizen Joint - Stock Commercial Bank",
      "short_name": "NCB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970421",
      "name": "Vietnam – Russia Joint - venture Bank",
      "short_name": "VRB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970422",
      "name": "Military Joint-stock Commercial Bank",
      "short_name": "MB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970423",
      "name": "Tien Phong Joint -stock Commercial Bank",
      "short_name": "TIENPHONGBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970424",
      "name": "Shinhan Bank (Vietnam) Ltd.",
      "short_name": "SHINHANBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970425",
      "name": "An Binh Joint -stock Commercial Bank",
      "short_name": "ABB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970426",
      "name": "The Maritime Joint-stock Commercial Bank",
      "short_name": "MARITIMEBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970427",
      "name": "Viet A Joint – Stock Commercial Bank",
      "short_name": "VIETABANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970428",
      "name": "Nam A Joint -stock Commercial Bank",
      "short_name": "NAM_A_BANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970429",
      "name": "Sai Gon Joint-stock Commercial Bank",
      "short_name": "SCB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970430",
      "name": "Petrolimex Group Joint-stock Commercial Bank",
      "short_name": "PG_BANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970431",
      "name": "Vietnam Export Import Joint-stock Commercial Bank",
      "short_name": "EXIMBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970432",
      "name": "Vietnam Prosperity Joint -stock Commercial Bank",
      "short_name": "VP_BANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970433",
      "name": "Viet Nam Thuong Tin Joint-stock Commercial Bank",
      "short_name": "VIETBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970434",
      "name": "Indovina Bank Ltd. (IVB)",
      "short_name": "IVB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970436",
      "name": "Joint-stock Commercial Bank for Foreign Trade of Vietnam",
      "short_name": "VIETCOMBANK",
      "isSelected": true,
      "country": "VN"
    },
    {
      "code": "970437",
      "name": "Ho Chi Minh City Development Joint -stock Commercial Bank",
      "short_name": "HDBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970438",
      "name": "Bao Viet Joint-stock Commercial Bank",
      "short_name": "BAOVIETBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970439",
      "name": "Public Bank Vietnam",
      "short_name": "PUBLIC_BANK_VN",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970440",
      "name": "Southeast Asia Joint-stock Commercial Bank",
      "short_name": "SEABANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970441",
      "name": "Vietnam International Joint-stock Commercial Bank",
      "short_name": "VIB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970442",
      "name": "Hong LeongBank (Vietnam) Ltd.",
      "short_name": "HONG_LEONGBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970443",
      "name": "Saigon-Hanoi Joint-stock Commercial Bank",
      "short_name": "SHB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970444",
      "name": "One Member Limited Liability Vietnam Construction Bank",
      "short_name": "VIETCONSTRUCTIONBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970446",
      "name": "Cooperative Bank of Vietnam",
      "short_name": "COOPERATIVE_BANK_VN",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970448",
      "name": "Orient Joint-stock Commercial Bank",
      "short_name": "OCB",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970449",
      "name": "Lien Viet Post Joint- stock Commercial Bank",
      "short_name": "LIENVIETPOSTBANK",
      "isSelected": false,
      "country": "VN"
    },
    {
      "code": "970452",
      "name": "Kien Long Joint-stock Commercial Bank",
      "short_name": "KIENLONG_BANK",
      "isSelected": false,
      "country": "VN"
    }
  ];
  final listBankCountry = (bank as List<dynamic>)
      .map((item) => BankCountryOptionModelStruct.fromMap(item))
      .toList();

  return listBankCountry;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
