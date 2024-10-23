import 'dart:convert';

dynamic getDataVietnamBank() {
  /// MODIFY CODE ONLY BELOW THIS LINE

  dynamic bank_vietnam = [
    {
      "code": "970400",
      "name": "Saigon Bank for Industry & Trade",
      "short_name": "SAIGONBANK"
    },
    {
      "code": "970403",
      "name": "Sai Gon Thuong Tin Joint- Stock Commercial Bank",
      "short_name": "SACOMBANK"
    },
    {
      "code": "970405",
      "name": "Vietnam Bank for Agriculture and Rural Development",
      "short_name": "AGRIBANK"
    },
    {
      "code": "970406",
      "name": "DONG A Joint- Stock Commercial Bank",
      "short_name": "DONGABANK"
    },
    {
      "code": "970407",
      "name": "Viet Nam Technological and Joint- Stock Commercial Bank",
      "short_name": "TECHCOMBANK"
    },
    {
      "code": "970408",
      "name": "Global Petro Sole Member Limited Commercial Bank",
      "short_name": "GPBANK"
    },
    {
      "code": "970409",
      "name": "BAC A Joint-Stock Commercial Bank",
      "short_name": "BACABANK"
    },
    {
      "code": "970410",
      "name": "Standard Chartered Bank (Vietnam) Limited",
      "short_name": "STANDARD_CHARTERED"
    },
    {
      "code": "970412",
      "name": "Vietnam Public Joint-stock Commercial Bank",
      "short_name": "PVCOMBANK"
    },
    {
      "code": "970414",
      "name": "Ocean Commercial One Member Limited Liability Bank",
      "short_name": "OCEANBANK"
    },
    {
      "code": "970415",
      "name": "Vietnam Joint-stock Commercial Bank for Industry and Trade",
      "short_name": "VIETINBANK"
    },
    {
      "code": "970416",
      "name": "Asia Joint-stock Commercial Bank",
      "short_name": "ACB"
    },
    {
      "code": "970418",
      "name":
          "Joint-stock Commercial Bank for Investment and Development of Vietnam",
      "short_name": "BIDV"
    },
    {
      "code": "970419",
      "name": "National Citizen Joint- Stock Commercial Bank",
      "short_name": "NCB"
    },
    {
      "code": "970421",
      "name": "Vietnam – Russia Joint -venture Bank",
      "short_name": "VRB"
    },
    {
      "code": "970422",
      "name": "Military Joint-stock Commercial Bank",
      "short_name": "MB"
    },
    {
      "code": "970423",
      "name": "Tien Phong Joint -stock Commercial Bank",
      "short_name": "TIENPHONGBANK"
    },
    {
      "code": "970424",
      "name": "Shinhan Bank (Vietnam) Ltd.",
      "short_name": "SHINHANBANK"
    },
    {
      "code": "970425",
      "name": "An Binh Joint -stock Commercial Bank",
      "short_name": "ABB"
    },
    {
      "code": "970426",
      "name": "The Maritime Joint-stock Commercial Bank",
      "short_name": "MARITIMEBANK"
    },
    {
      "code": "970427",
      "name": "Viet A Joint – Stock Commercial Bank",
      "short_name": "VIETABANK"
    },
    {
      "code": "970428",
      "name": "Nam A Joint -stock Commercial Bank",
      "short_name": "NAM_A_BANK"
    },
    {
      "code": "970429",
      "name": "Sai Gon Joint-stock Commercial Bank",
      "short_name": "SCB"
    },
    {
      "code": "970430",
      "name": "Petrolimex Group Joint-stock Commercial Bank",
      "short_name": "PG_BANK"
    },
    {
      "code": "970431",
      "name": "Vietnam Export Import Joint-stock Commercial Bank",
      "short_name": "EXIMBANK"
    },
    {
      "code": "970432",
      "name": "Vietnam Prosperity Joint -stock Commercial Bank",
      "short_name": "VP_BANK"
    },
    {
      "code": "970433",
      "name": "Viet Nam Thuong Tin Joint-stock Commercial Bank",
      "short_name": "VIETBANK"
    },
    {"code": "970434", "name": "Indovina Bank Ltd. (IVB)", "short_name": "IVB"},
    {
      "code": "970436",
      "name": "Joint-stock Commercial Bank for Foreign Trade of Vietnam",
      "short_name": "VIETCOMBANK"
    },
    {
      "code": "970437",
      "name": "Ho Chi Minh City Development Joint -stock Commercial Bank",
      "short_name": "HDBANK"
    },
    {
      "code": "970438",
      "name": "Bao Viet Joint-stock Commercial Bank",
      "short_name": "BAOVIETBANK"
    },
    {
      "code": "970439",
      "name": "Public Bank Vietnam",
      "short_name": "PUBLIC_BANK_VN"
    },
    {
      "code": "970440",
      "name": "Southeast Asia Joint-stock Commercial Bank",
      "short_name": "SEABANK"
    },
    {
      "code": "970441",
      "name": "Vietnam International Joint-stock Commercial Bank",
      "short_name": "VIB"
    },
    {
      "code": "970442",
      "name": "Hong LeongBank (Vietnam) Ltd.",
      "short_name": "HONG_LEONGBANK"
    },
    {
      "code": "970443",
      "name": "Saigon-Hanoi Joint-stock Commercial Bank",
      "short_name": "SHB"
    },
    {
      "code": "970444",
      "name": "One Member Limited Liability Vietnam Construction Bank",
      "short_name": "VIETCONSTRUCTIONBANK"
    },
    {
      "code": "970446",
      "name": "Cooperative Bank of Vietnam",
      "short_name": "COOPERATIVE_BANK_VN"
    },
    {
      "code": "970448",
      "name": "Orient Joint-stock Commercial Bank",
      "short_name": "OCB"
    },
    {
      "code": "970449",
      "name": "Lien Viet Post Joint- stock Commercial Bank",
      "short_name": "LIENVIETPOSTBANK"
    },
    {
      "code": "970452",
      "name": "Kien Long Joint-stock Commercial Bank",
      "short_name": "KIENLONGBANK"
    },
    {
      "code": "970454",
      "name": "Viet Capital Joint-stock Commercial Bank",
      "short_name": "VIET_CAPITAL_BANK"
    },
    {
      "code": "970455",
      "name": "Industrial Bank of Korea –Hanoi branch",
      "short_name": "IBK_HANOI"
    },
    {
      "code": "970456",
      "name": "Industrial Bank of Korea – HCMC branch",
      "short_name": "IBK_HCMC"
    },
    {
      "code": "970457",
      "name": "Woori Bank Vietnam Limited",
      "short_name": "WOORI_BANK_VN"
    },
    {
      "code": "970458",
      "name": "United Overseas Bank (Vietnam) Ltd. (UOB Vietnam)",
      "short_name": "UOB_VN"
    },
    {"code": "970459", "name": "CIMB Vietnam", "short_name": "CIMB_VN"},
    {
      "code": "970460",
      "name": "Cement Finance Joint Stock Company",
      "short_name": "CEMENT_FINANCE"
    },
    {
      "code": "970462",
      "name": "Kookmin Bank - Hanoi Branch",
      "short_name": "KOOKMIN_HANOI"
    },
    {
      "code": "970463",
      "name": "Kookmin Bank - Ho Chi Minh City Branch",
      "short_name": "KOOKMIN_HCMC"
    },
    {
      "code": "970464",
      "name": "Finance Company Limited For Community - FCCOM",
      "short_name": "FCCOM"
    },
    {
      "code": "970465",
      "name": "SinoPac– Ho Chi Minh City Branch",
      "short_name": "SINOPAC_HCMC"
    },
    {
      "code": "970466",
      "name": "KEB Hana Bank – Ho Chi Minh City Branch",
      "short_name": "KEB_HANA_HCMC"
    },
    {
      "code": "970467",
      "name": "KEB Hana Bank – Hanoi branch",
      "short_name": "KEB_HANA_HANOI"
    },
    {
      "code": "970468",
      "name": "MiraeAsset Finance Company (Vietnam) Limited",
      "short_name": "MIRAERATEASSET"
    },
    {
      "code": "970469",
      "name": "EVN Finance Joint Stock Company",
      "short_name": "EVN_FINANCE"
    },
    {
      "code": "970470",
      "name": "MB Shinsei Finance Limited Liability Company",
      "short_name": "MB_SHINSEI"
    }
  ];

  return jsonEncode(bank_vietnam);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
