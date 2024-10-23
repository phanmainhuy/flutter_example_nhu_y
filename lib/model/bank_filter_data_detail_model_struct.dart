// ignore_for_file: unnecessary_getters_setters

class BankFilterDataDetailModelStruct {
  BankFilterDataDetailModelStruct({
    String? bankBin,
    String? bankHolder,
    String? bankCountry,
    String? bankNumber,
  })  : _bankBin = bankBin,
        _bankHolder = bankHolder,
        _bankCountry = bankCountry,
        _bankNumber = bankNumber;

  // "bankBin" field.
  String? _bankBin;
  String get bankBin => _bankBin ?? '';
  set bankBin(String? val) => _bankBin = val;

  bool hasBankBin() => _bankBin != null;

  // "bankHolder" field.
  String? _bankHolder;
  String get bankHolder => _bankHolder ?? '';
  set bankHolder(String? val) => _bankHolder = val;

  bool hasBankHolder() => _bankHolder != null;

  // "bankCountry" field.
  String? _bankCountry;
  String get bankCountry => _bankCountry ?? '';
  set bankCountry(String? val) => _bankCountry = val;

  bool hasBankCountry() => _bankCountry != null;

  // "bankNumber" field.
  String? _bankNumber;
  String get bankNumber => _bankNumber ?? '';
  set bankNumber(String? val) => _bankNumber = val;

  bool hasBankNumber() => _bankNumber != null;

  static BankFilterDataDetailModelStruct fromMap(Map<String, dynamic> data) =>
      BankFilterDataDetailModelStruct(
        bankBin: data['bankBin'] as String?,
        bankHolder: data['bankHolder'] as String?,
        bankCountry: data['bankCountry'] as String?,
        bankNumber: data['bankNumber'] as String?,
      );

  static BankFilterDataDetailModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? BankFilterDataDetailModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'bankBin': _bankBin,
        'bankHolder': _bankHolder,
        'bankCountry': _bankCountry,
        'bankNumber': _bankNumber,
      };

  @override
  String toString() => 'BankFilterDataDetailModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankFilterDataDetailModelStruct &&
        bankBin == other.bankBin &&
        bankHolder == other.bankHolder &&
        bankCountry == other.bankCountry &&
        bankNumber == other.bankNumber;
  }
}

BankFilterDataDetailModelStruct createBankFilterDataDetailModelStruct({
  String? bankBin,
  String? bankHolder,
  String? bankCountry,
  String? bankNumber,
}) =>
    BankFilterDataDetailModelStruct(
      bankBin: bankBin,
      bankHolder: bankHolder,
      bankCountry: bankCountry,
      bankNumber: bankNumber,
    );
