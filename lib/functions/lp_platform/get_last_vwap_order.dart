void main() {
  print(getLastVWAPOrder(data, uuid, lastVWAP));
}

double getLastVWAPOrder(
  dynamic data,
  String uuid,
  double lastVWAP,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // double result = 0;
  try {
    List<dynamic> filteredList = (data['data'] as List)
        .where((item) =>
            item['status'] == "SUCCESS" && item['orderType'] != "WITHDRAW")
        .toList();

    // uuid = filteredList

    List<dynamic> datafirst =
        (data['data'] as List).where((item) => item['uuid'] == uuid).toList();

    int lengthList = filteredList.length;

    // print('lengthList: $lengthList');
    // print('lastVWAP: $lastVWAP');
    // print('uuid: $uuid');
    if (lengthList == 1 || lengthList == 0) {
      return lastVWAP;
    }

    // print(datafirst[0]);

    // if (lengthList > 0) {
    //   List<double> arrayVwap =
    //       filteredList.map((item) => item['vwap'] as double).toList();
    //   if (index > 0 && index <= lengthList) {
    //     result = arrayVwap[index - 1];
    //   } else if (index == 0) {
    //     arrayVwap = [lengthList - 1];
    //   } else if (index > lengthList) {
    //     result = arrayVwap[lengthList - 1];
    //   }
    //   print(arrayVwap);
    //   print(index);
    // }
    // print(result);

    for (int i = 0; i < lengthList; i++) {
      if (int.parse(filteredList[i]['timestamp']) <
          int.parse(datafirst[0]['timestamp'])) {
        // print(filteredList[i]['vwap']);
        return filteredList[i]['vwap'];
      }
    }
    return lastVWAP;
  } catch (e) {
    print(e);
    return 0;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

dynamic data = {
  "paging": {"page": 1, "limit": 1000, "totalPage": 1, "totalRecord": 3},
  "data": [
    {
      "Key": "",
      "Id": "",
      "Rev": "",
      "uuid": "657632b1-edfb-4099-8249-b9bd2178cff1",
      "createdAt": "2024-08-09T08:23:04Z",
      "updatedAt": "2024-08-12T02:57:55Z",
      "expiryAt": "",
      "merchantId": "ccf90ae8-afc7-44e7-be79-25af8f8cc515",
      "userId": "7227871b-daee-42cd-a7e3-4b0fefdf19ca",
      "lpId": "2da2f94d-6e80-4ff6-a6c2-190206849242",
      "pair": "VND_USDT",
      "amount": 4.56,
      "price": 25000,
      "tokenLocked": "4560000",
      "idLocked": "ccf90ae8-afc7-44e7-be79-25af8f8cc515",
      "timestamp": "1723191720",
      "orderType": "SELL",
      "status": "SUCCESS",
      "states": [
        {
          "updatedAt": "2024-08-09T08:23:04Z",
          "updatedBy": "ccf90ae8-afc7-44e7-be79-25af8f8cc515",
          "status": "PENDING",
          "data":
              "ewogImJhbmtfY291bnRyeSI6ICJWTiIsCiAiYmFua19uYW1lIjogIlBVQkxJQyBCQU5LIFZJRVROQU0iLAogImJhbmtfYmluIjogIjEyMzQ1NiIsCiAiYmFua19ob2xkZXIiOiAiSEVMRU4gQkFLRVIiLAogImJhbmtfbnVtYmVyIjogIjAxMjM0NTY3ODkxMjMiCn0="
        },
        {
          "updatedAt": "2024-08-09T08:23:04Z",
          "updatedBy": "ccf90ae8-afc7-44e7-be79-25af8f8cc515",
          "status": "TOKEN_LOCKED",
          "data": "eyJ0b2tlbnMiOjQ1NjAwMDB9"
        },
        {
          "updatedAt": "2024-08-12T02:53:13Z",
          "updatedBy": "2da2f94d-6e80-4ff6-a6c2-190206849242",
          "status": "ACCEPTED",
          "data": ""
        },
        {
          "updatedAt": "2024-08-12T02:53:28Z",
          "updatedBy": "2da2f94d-6e80-4ff6-a6c2-190206849242",
          "status": "LP_CONFIRMED",
          "data": "ewogImJhbmtfdHgiOiAiMTIzNDU2NzgiCn0="
        },
        {
          "updatedAt": "2024-08-12T02:57:26Z",
          "updatedBy": "ccf90ae8-afc7-44e7-be79-25af8f8cc515",
          "status": "USER_CONFIRMED",
          "data": "ewogImJhbmtfdHgiOiAieHh4LXh4eC14eHgiCn0="
        },
        {
          "updatedAt": "2024-08-12T02:57:27Z",
          "updatedBy": "ccf90ae8-afc7-44e7-be79-25af8f8cc515",
          "status": "TRANSFERING_TOKEN",
          "data":
              "ewogInR4X2hhc2giOiAiY2Y5ODNhMDBiNmRjNTk2YTkyZDE5MmVmMzczZmM0ZjA5YTk5NWU2MDY0OTE0ZWIxNGI3YjI3YjliZTMxNTE0YSIKfQ=="
        },
        {
          "updatedAt": "2024-08-12T02:57:55Z",
          "updatedBy": "",
          "status": "SUCCESS",
          "data":
              "ewogInR4X2hhc2giOiAiY2Y5ODNhMDBiNmRjNTk2YTkyZDE5MmVmMzczZmM0ZjA5YTk5NWU2MDY0OTE0ZWIxNGI3YjI3YjliZTMxNTE0YSIKfQ=="
        }
      ],
      "lpBank": null,
      "userBank": null,
      "reffNumber": "aam 39H8",
      "qrCode":
          "00020101021238570010A00000072701270006123456011301234567891230208QRIBFTTA53037045418113999.999999999995802VN62120808aam 39H8630443E7",
      "signature": "",
      "vwap": 24225.576,
      "balance": "62291051",
      "lpAdminId": "25ae1666-651c-4cf8-bd30-1d07d3182b54",
      "profitLoss": "0"
    },
    {
      "Key": "",
      "Id": "",
      "Rev": "",
      "uuid": "30b82e39-c917-4115-80d5-748bb5691bf3",
      "createdAt": "2024-08-08T09:48:31Z",
      "updatedAt": "2024-08-12T02:57:27Z",
      "expiryAt": "",
      "merchantId": "4a75e0f4-62d4-4bc3-ab4a-b7d0197f40f8",
      "userId": "49db94e4-85bf-4b91-965c-c297308e9cf8",
      "lpId": "2da2f94d-6e80-4ff6-a6c2-190206849242",
      "pair": "VND_USDT",
      "amount": 3,
      "price": 25000,
      "tokenLocked": "3000000",
      "idLocked": "4a75e0f4-62d4-4bc3-ab4a-b7d0197f40f8",
      "timestamp": "1723110480",
      "orderType": "SELL",
      "status": "SUCCESS",
      "states": [
        {
          "updatedAt": "2024-08-08T09:48:31Z",
          "updatedBy": "4a75e0f4-62d4-4bc3-ab4a-b7d0197f40f8",
          "status": "PENDING",
          "data":
              "ewogImJhbmtfY291bnRyeSI6ICJWTiIsCiAiYmFua19uYW1lIjogIlBVQkxJQyBCQU5LIFZJRVROQU0iLAogImJhbmtfYmluIjogIjEyMzQ1NiIsCiAiYmFua19ob2xkZXIiOiAiSEVMRU4gQkFLRVIiLAogImJhbmtfbnVtYmVyIjogIjAxMjM0NTY3ODkxMjMiCn0="
        },
        {
          "updatedAt": "2024-08-08T09:48:31Z",
          "updatedBy": "4a75e0f4-62d4-4bc3-ab4a-b7d0197f40f8",
          "status": "TOKEN_LOCKED",
          "data": "eyJ0b2tlbnMiOjMwMDAwMDB9"
        },
        {
          "updatedAt": "2024-08-12T02:53:15Z",
          "updatedBy": "2da2f94d-6e80-4ff6-a6c2-190206849242",
          "status": "ACCEPTED",
          "data": ""
        },
        {
          "updatedAt": "2024-08-12T02:53:30Z",
          "updatedBy": "2da2f94d-6e80-4ff6-a6c2-190206849242",
          "status": "LP_CONFIRMED",
          "data": "ewogImJhbmtfdHgiOiAiMTIzNDU2NzgiCn0="
        },
        {
          "updatedAt": "2024-08-12T02:56:58Z",
          "updatedBy": "4a75e0f4-62d4-4bc3-ab4a-b7d0197f40f8",
          "status": "USER_CONFIRMED",
          "data": "ewogImJhbmtfdHgiOiAieHh4LXh4eC14eHgiCn0="
        },
        {
          "updatedAt": "2024-08-12T02:57:00Z",
          "updatedBy": "4a75e0f4-62d4-4bc3-ab4a-b7d0197f40f8",
          "status": "TRANSFERING_TOKEN",
          "data":
              "ewogInR4X2hhc2giOiAiZThjZGFhZmViMDg3MmRhYWMyNThkNTE1ZjZhY2IxYmI2MGE4NTQxMWE3ZjMzNjg2Njk4ZmM3YzA0OWVhMWY1OSIKfQ=="
        },
        {
          "updatedAt": "2024-08-12T02:57:27Z",
          "updatedBy": "",
          "status": "SUCCESS",
          "data":
              "ewogInR4X2hhc2giOiAiZThjZGFhZmViMDg3MmRhYWMyNThkNTE1ZjZhY2IxYmI2MGE4NTQxMWE3ZjMzNjg2Njk4ZmM3YzA0OWVhMWY1OSIKfQ=="
        }
      ],
      "lpBank": null,
      "userBank": null,
      "reffNumber": "aardwolf W5DE",
      "qrCode":
          "00020101021238570010A00000072701270006123456011301234567891230208QRIBFTTA53037045405750005802VN62170813aardwolf W5DE6304F0E9",
      "signature": "",
      "vwap": 24207.828,
      "balance": "57731051",
      "lpAdminId": "25ae1666-651c-4cf8-bd30-1d07d3182b54",
      "profitLoss": "0"
    },
    {
      "Key": "",
      "Id": "",
      "Rev": "",
      "uuid": "623eef3b-7ac0-45db-8b0a-e287d92f8261",
      "createdAt": "2024-08-07T11:01:49Z",
      "updatedAt": "2024-08-12T02:58:37Z",
      "expiryAt": "",
      "merchantId": "32e83993-6bdd-43db-b4af-f5ac85cb2014",
      "userId": "6188f828-b5f4-4cda-8b98-737a235b9932",
      "lpId": "2da2f94d-6e80-4ff6-a6c2-190206849242",
      "pair": "VND_USDT",
      "amount": 143544,
      "price": 26099,
      "tokenLocked": "5499980",
      "idLocked": "2da2f94d-6e80-4ff6-a6c2-190206849242",
      "timestamp": "1723028400",
      "orderType": "BUY",
      "status": "SUCCESS",
      "states": [
        {
          "updatedAt": "2024-08-07T11:01:49Z",
          "updatedBy": "32e83993-6bdd-43db-b4af-f5ac85cb2014",
          "status": "PENDING",
          "data": ""
        },
        {
          "updatedAt": "2024-08-12T02:57:53Z",
          "updatedBy": "2da2f94d-6e80-4ff6-a6c2-190206849242",
          "status": "ACCEPTED",
          "data":
              "ewogImJhbmtfY291bnRyeSI6ICJWTiIsCiAiYmFua19uYW1lIjogIkFDQiIsCiAiYmFua19iaW4iOiAiMTIzMTIzIiwKICJiYW5rX2hvbGRlciI6ICJKT0hOIFdBTEtFUiIsCiAiYmFua19udW1iZXIiOiAiMTIzNDU2NzgiCn0="
        },
        {
          "updatedAt": "2024-08-12T02:57:53Z",
          "updatedBy": "2da2f94d-6e80-4ff6-a6c2-190206849242",
          "status": "TOKEN_LOCKED",
          "data": "eyJ0b2tlbnMiOjU0OTk5ODB9"
        },
        {
          "updatedAt": "2024-08-12T02:58:05Z",
          "updatedBy": "2da2f94d-6e80-4ff6-a6c2-190206849242",
          "status": "LP_CONFIRMED",
          "data": "ewogImJhbmtfdHgiOiAiMDEyMzQ1Njc4OTEyMyIKfQ=="
        },
        {
          "updatedAt": "2024-08-12T02:58:07Z",
          "updatedBy": "2da2f94d-6e80-4ff6-a6c2-190206849242",
          "status": "TRANSFERING_TOKEN",
          "data":
              "ewogInR4X2hhc2giOiAiYjJmODVmNjIxY2Y5Njg1N2JkZmQ3NDU4MmMxMzY0NzM5MWM4OTY4Njg1ZDk2ZmZhYTQwYzhlZDBmYTY4NzQ2NyIKfQ=="
        },
        {
          "updatedAt": "2024-08-12T02:58:37Z",
          "updatedBy": "",
          "status": "SUCCESS",
          "data":
              "ewogInR4X2hhc2giOiAiYjJmODVmNjIxY2Y5Njg1N2JkZmQ3NDU4MmMxMzY0NzM5MWM4OTY4Njg1ZDk2ZmZhYTQwYzhlZDBmYTY4NzQ2NyIKfQ=="
        }
      ],
      "lpBank": null,
      "userBank": null,
      "reffNumber": "abaciscus HC1K",
      "qrCode":
          "00020101021238520010A000000727012200061231230108123456780208QRIBFTTA530370454061435445802VN62180814abaciscus HC1K630459EC",
      "signature": "",
      "vwap": 24164.407,
      "balance": "56791071",
      "lpAdminId": "25ae1666-651c-4cf8-bd30-1d07d3182b54",
      "profitLoss": "10640222808"
    }
  ]
};

String uuid = '623eef3b-7ac0-45db-8b0a-e287d92f8261';
double lastVWAP = 24000;
