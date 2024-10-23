// ignore_for_file: unnecessary_getters_setters

import 'package:flutter_example_nhuy/model/bank_filter_data_detail_model_struct.dart';

class BankFilterDataModelStruct {
  BankFilterDataModelStruct({
    String? key,
    String? id,
    String? rev,
    String? uuid,
    String? userId,
    BankFilterDataDetailModelStruct? bankDetail,
    String? createdAt,
    String? updatedAt,
    List<String>? currencies,
    List<String>? currenciesDefault,
    List<String>? currenciesAlwaysUse,
    bool? showBankNumber,
    bool? isSelected,
  })  : _key = key,
        _id = id,
        _rev = rev,
        _uuid = uuid,
        _userId = userId,
        _bankDetail = bankDetail,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _currencies = currencies,
        _currenciesDefault = currenciesDefault,
        _currenciesAlwaysUse = currenciesAlwaysUse,
        _showBankNumber = showBankNumber,
        _isSelected = isSelected;

  // "Key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "Rev" field.
  String? _rev;
  String get rev => _rev ?? '';
  set rev(String? val) => _rev = val;

  bool hasRev() => _rev != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "bankDetail" field.
  BankFilterDataDetailModelStruct? _bankDetail;
  BankFilterDataDetailModelStruct get bankDetail =>
      _bankDetail ?? BankFilterDataDetailModelStruct();
  set bankDetail(BankFilterDataDetailModelStruct? val) => _bankDetail = val;

  void updateBankDetail(Function(BankFilterDataDetailModelStruct) updateFn) {
    updateFn(_bankDetail ??= BankFilterDataDetailModelStruct());
  }

  bool hasBankDetail() => _bankDetail != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "currencies" field.
  List<String>? _currencies;
  List<String> get currencies => _currencies ?? const [];
  set currencies(List<String>? val) => _currencies = val;

  void updateCurrencies(Function(List<String>) updateFn) {
    updateFn(_currencies ??= []);
  }

  bool hasCurrencies() => _currencies != null;

  // "currenciesDefault" field.
  List<String>? _currenciesDefault;
  List<String> get currenciesDefault => _currenciesDefault ?? const [];
  set currenciesDefault(List<String>? val) => _currenciesDefault = val;

  void updateCurrenciesDefault(Function(List<String>) updateFn) {
    updateFn(_currenciesDefault ??= []);
  }

  bool hasCurrenciesDefault() => _currenciesDefault != null;

  // "currenciesAlwaysUse" field.
  List<String>? _currenciesAlwaysUse;
  List<String> get currenciesAlwaysUse => _currenciesAlwaysUse ?? const [];
  set currenciesAlwaysUse(List<String>? val) => _currenciesAlwaysUse = val;

  void updateCurrenciesAlwaysUse(Function(List<String>) updateFn) {
    updateFn(_currenciesAlwaysUse ??= []);
  }

  bool hasCurrenciesAlwaysUse() => _currenciesAlwaysUse != null;

  // "showBankNumber" field.
  bool? _showBankNumber;
  bool get showBankNumber => _showBankNumber ?? false;
  set showBankNumber(bool? val) => _showBankNumber = val;

  bool hasShowBankNumber() => _showBankNumber != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  static BankFilterDataModelStruct fromMap(Map<String, dynamic> data) =>
      BankFilterDataModelStruct(
        key: data['Key'] as String?,
        id: data['Id'] as String?,
        rev: data['Rev'] as String?,
        uuid: data['uuid'] as String?,
        userId: data['userId'] as String?,
        bankDetail:
            BankFilterDataDetailModelStruct.maybeFromMap(data['bankDetail']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        currencies: (data['currencies']),
        currenciesDefault: (data['currenciesDefault']),
        currenciesAlwaysUse: (data['currenciesAlwaysUse']),
        showBankNumber: data['showBankNumber'] as bool?,
        isSelected: data['isSelected'] as bool?,
      );

  static BankFilterDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? BankFilterDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Key': _key,
        'Id': _id,
        'Rev': _rev,
        'uuid': _uuid,
        'userId': _userId,
        'bankDetail': _bankDetail?.toMap(),
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'currencies': _currencies,
        'currenciesDefault': _currenciesDefault,
        'currenciesAlwaysUse': _currenciesAlwaysUse,
        'showBankNumber': _showBankNumber,
        'isSelected': _isSelected,
      };

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Key': (_key,),
        'Id': (_id,),
        'Rev': (_rev,),
        'uuid': (_uuid,),
        'userId': (_userId,),
        'bankDetail': (_bankDetail,),
        'createdAt': (_createdAt,),
        'updatedAt': (_updatedAt,),
        'currencies': (
          _currencies,
          isList: true,
        ),
        'currenciesDefault': (
          _currenciesDefault,
          isList: true,
        ),
        'currenciesAlwaysUse': (
          _currenciesAlwaysUse,
          isList: true,
        ),
        'showBankNumber': (_showBankNumber,),
        'isSelected': (_isSelected,),
      };

  @override
  String toString() => 'BankFilterDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankFilterDataModelStruct &&
        key == other.key &&
        id == other.id &&
        rev == other.rev &&
        uuid == other.uuid &&
        userId == other.userId &&
        bankDetail == other.bankDetail &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        currencies == other.currencies &&
        currenciesDefault == other.currenciesDefault &&
        currenciesAlwaysUse == other.currenciesAlwaysUse &&
        showBankNumber == other.showBankNumber &&
        isSelected == other.isSelected;
  }
}

BankFilterDataModelStruct createBankFilterDataModelStruct({
  String? key,
  String? id,
  String? rev,
  String? uuid,
  String? userId,
  BankFilterDataDetailModelStruct? bankDetail,
  String? createdAt,
  String? updatedAt,
  bool? showBankNumber,
  bool? isSelected,
}) =>
    BankFilterDataModelStruct(
      key: key,
      id: id,
      rev: rev,
      uuid: uuid,
      userId: userId,
      bankDetail: bankDetail ?? BankFilterDataDetailModelStruct(),
      createdAt: createdAt,
      updatedAt: updatedAt,
      showBankNumber: showBankNumber,
      isSelected: isSelected,
    );
