import 'package:flutter/material.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _Ws = 'wss://dev.alphvlabs.com/ws';
  String get Ws => _Ws;
  set Ws(String _value) {
    _Ws = _value;
  }

  bool _IsSocketOpen = false;
  bool get IsSocketOpen => _IsSocketOpen;
  set IsSocketOpen(bool _value) {
    _IsSocketOpen = _value;
  }

  List<dynamic> _ListSocketData = [];
  List<dynamic> get ListSocketData => _ListSocketData;
  set ListSocketData(List<dynamic> _value) {
    _ListSocketData = _value;
  }

  void addToListSocketData(dynamic _value) {
    _ListSocketData.add(_value);
  }

  void removeFromListSocketData(dynamic _value) {
    _ListSocketData.remove(_value);
  }

  void removeAtIndexFromListSocketData(int _index) {
    _ListSocketData.removeAt(_index);
  }

  void updateListSocketDataAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _ListSocketData[_index] = updateFn(_ListSocketData[_index]);
  }

  void insertAtIndexInListSocketData(int _index, dynamic _value) {
    _ListSocketData.insert(_index, _value);
  }

  String _EmailMerchant = 'merchant@parthlabs.io';
  String get EmailMerchant => _EmailMerchant;
  set EmailMerchant(String _value) {
    _EmailMerchant = _value;
  }

  String _TokenMerchant = '';
  String get TokenMerchant => _TokenMerchant;
  set TokenMerchant(String _value) {
    _TokenMerchant = _value;
  }

  String _EmailUser = '';
  String get EmailUser => _EmailUser;
  set EmailUser(String _value) {
    _EmailUser = _value;
  }

  String _TokenUser =
      'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTgyNjYwNDAsImlhdCI6MTcxODE3OTY0MCwiaXNzIjoidGVzdGluZ0BzZWN1cmUuaXN0aW8uaW8iLCJqdGkiOiI3ZTBhMTBlNS05YTAxLTQ2YTctOGI2Zi1hMDJhOWIxNTZjMDQiLCJwZXJtaXNzaW9uIjoicnciLCJyb2xlIjoiQ09ORklSTSIsInN1YiI6InRlc3RpbmciLCJ0eXBlIjo0fQ.YO_4SHG1a_2K0fQ2XlWcY9Rj1ViDjvmPtcK9GFHc35OUtbJXvS3PG1RMLIKjsCXskoRIt3jExn-ibI86tDsldWjElKo12T9QhY-uxG0kRYiflsQpWW-qyfwLk-wGJu1VntMrsUKZ0qhnN1LDQOtaVjimbnGBzL30jj6YauPUikWJ6sCXWepPZJQSIYUr4bBH9NHWDDDV-g_q6J7ngeRr3nCqiURssMKcmNAExMp15zkOExUz99imEGN7rZitNUAUi8bDU-9tWabp5g7ic4vD5dkD93sEefXML_kstglcZqOcwmZfMO2KAGkweag7R-TAaCOVn_VVFUIseVOQieTjNA';
  String get TokenUser => _TokenUser;
  set TokenUser(String _value) {
    _TokenUser = _value;
  }

  String _IdMerchant = '';
  String get IdMerchant => _IdMerchant;
  set IdMerchant(String _value) {
    _IdMerchant = _value;
  }

  String _IdUser = '';
  String get IdUser => _IdUser;
  set IdUser(String _value) {
    _IdUser = _value;
  }

  dynamic _BankUser = jsonDecode(
      '{\"bank_bin\":\"970439\",\"bank_country\":\"VN\",\"bank_holder\":\"VONG SAU HAN\",\"bank_name\":\"PUBLIC BANK VIETNAM\",\"bank_number\":\"0704140003342\"}');
  dynamic get BankUser => _BankUser;
  set BankUser(dynamic _value) {
    _BankUser = _value;
  }

  dynamic _BankLP = jsonDecode(
      '{\"bank_bin\":\"\",\"bank_country\":\"VN\",\"bank_holder\":\"DINH NHAT TRUNG\",\"bank_name\":\"Dong A\",\"bank_number\":\"0107919380\"}');
  dynamic get BankLP => _BankLP;
  set BankLP(dynamic _value) {
    _BankLP = _value;
  }

  String _CurrencyPairID = '6';
  String get CurrencyPairID => _CurrencyPairID;
  set CurrencyPairID(String _value) {
    _CurrencyPairID = _value;
  }

  String _WithdrawCurrency = 'TRX';
  String get WithdrawCurrency => _WithdrawCurrency;
  set WithdrawCurrency(String _value) {
    _WithdrawCurrency = _value;
  }

  String _WithdrawAsset = 'USDT';
  String get WithdrawAsset => _WithdrawAsset;
  set WithdrawAsset(String _value) {
    _WithdrawAsset = _value;
  }

  String _WithdrawMaxBalance = '0';
  String get WithdrawMaxBalance => _WithdrawMaxBalance;
  set WithdrawMaxBalance(String _value) {
    _WithdrawMaxBalance = _value;
  }

  String _urlPro =
      'http://abc7a37f39adb440b9cd50f697c6825c-491921761.ap-southeast-2.elb.amazonaws.com';
  String get urlPro => _urlPro;
  set urlPro(String _value) {
    _urlPro = _value;
  }
}
