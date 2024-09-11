// ignore_for_file: unnecessary_getters_setters

// import 'index.dart';
// import '/flutter_flow/flutter_flow_util.dart';

class OrderDataItemStruct {
  OrderDataItemStruct({
    String? key,
    String? id,
    String? rev,
    String? uuid,
    String? createdAt,
    String? updatedAt,
    String? expiryAt,
    String? merchantId,
    String? userId,
    String? lpId,
    String? pair,
    String? token,
    String? timestamp,
    String? orderType,
    String? status,
    String? reffNumber,
    String? qrCode,
    String? signature,
    String? balance,
    String? lpAdminId,
    String? profitLoss,
    // List<OrderStateItemStruct>? states,
    // BankModelStruct? lpBank,
    // BankModelStruct? userBank,
    bool? isDisable,
    double? vwap,
    double? fiat,
    double? price,
    List<String>? idLocked,
  })  : _key = key,
        _id = id,
        _rev = rev,
        _uuid = uuid,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _expiryAt = expiryAt,
        _merchantId = merchantId,
        _userId = userId,
        _lpId = lpId,
        _pair = pair,
        _token = token,
        _timestamp = timestamp,
        _orderType = orderType,
        _status = status,
        _reffNumber = reffNumber,
        _qrCode = qrCode,
        _signature = signature,
        _vwap = vwap,
        _balance = balance,
        _lpAdminId = lpAdminId,
        _profitLoss = profitLoss,
        // _states = states,
        // _lpBank = lpBank,
        // _userBank = userBank,
        _isDisable = isDisable,
        _price = price,
        _fiat = fiat;
  // _idLocked = idLocked;

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

  // "expiryAt" field.
  String? _expiryAt;
  String get expiryAt => _expiryAt ?? '';
  set expiryAt(String? val) => _expiryAt = val;

  bool hasExpiryAt() => _expiryAt != null;

  // "merchantId" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  set merchantId(String? val) => _merchantId = val;

  bool hasMerchantId() => _merchantId != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "lpId" field.
  String? _lpId;
  String get lpId => _lpId ?? '';
  set lpId(String? val) => _lpId = val;

  bool hasLpId() => _lpId != null;

  // "pair" field.
  String? _pair;
  String get pair => _pair ?? '';
  set pair(String? val) => _pair = val;

  bool hasPair() => _pair != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  set timestamp(String? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  // "orderType" field.
  String? _orderType;
  String get orderType => _orderType ?? '';
  set orderType(String? val) => _orderType = val;

  bool hasOrderType() => _orderType != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "reffNumber" field.
  String? _reffNumber;
  String get reffNumber => _reffNumber ?? '';
  set reffNumber(String? val) => _reffNumber = val;

  bool hasReffNumber() => _reffNumber != null;

  // "qrCode" field.
  String? _qrCode;
  String get qrCode => _qrCode ?? '';
  set qrCode(String? val) => _qrCode = val;

  bool hasQrCode() => _qrCode != null;

  // "signature" field.
  String? _signature;
  String get signature => _signature ?? '';
  set signature(String? val) => _signature = val;

  bool hasSignature() => _signature != null;

  // "balance" field.
  String? _balance;
  String get balance => _balance ?? '';
  set balance(String? val) => _balance = val;

  bool hasBalance() => _balance != null;

  // "lpAdminId" field.
  String? _lpAdminId;
  String get lpAdminId => _lpAdminId ?? '';
  set lpAdminId(String? val) => _lpAdminId = val;

  bool hasLpAdminId() => _lpAdminId != null;

  // "profitLoss" field.
  String? _profitLoss;
  String get profitLoss => _profitLoss ?? '';
  set profitLoss(String? val) => _profitLoss = val;

  bool hasProfitLoss() => _profitLoss != null;

  // "states" field.
  // // List<OrderStateItemStruct>? _states;
  // // List<OrderStateItemStruct> get states => _states ?? const [];
  // // set states(List<OrderStateItemStruct>? val) => _states = val;

  // // void updateStates(Function(List<OrderStateItemStruct>) updateFn) {
  // //   updateFn(_states ??= []);
  // // }

  // // bool hasStates() => _states != null;

  // // // "lpBank" field.
  // // BankModelStruct? _lpBank;
  // // BankModelStruct get lpBank => _lpBank ?? BankModelStruct();
  // // set lpBank(BankModelStruct? val) => _lpBank = val;

  // // void updateLpBank(Function(BankModelStruct) updateFn) {
  // //   updateFn(_lpBank ??= BankModelStruct());
  // // }

  // // bool hasLpBank() => _lpBank != null;

  // // // "userBank" field.
  // // BankModelStruct? _userBank;
  // // BankModelStruct get userBank => _userBank ?? BankModelStruct();
  // // set userBank(BankModelStruct? val) => _userBank = val;

  // // void updateUserBank(Function(BankModelStruct) updateFn) {
  // //   updateFn(_userBank ??= BankModelStruct());
  // // }

  // bool hasUserBank() => _userBank != null;

  // "isDisable" field.
  bool? _isDisable;
  bool get isDisable => _isDisable ?? false;
  set isDisable(bool? val) => _isDisable = val;

  bool hasIsDisable() => _isDisable != null;

  // "vwap" field.
  double? _vwap;
  double get vwap => _vwap ?? 0.0;
  set vwap(double? val) => _vwap = val;

  // void incrementVwap(double amount) => vwap = vwap + amount;

  // bool hasVwap() => _vwap != null;

  // "fiat" field.
  double? _fiat;
  double get fiat => _fiat ?? 0.0;
  set fiat(double? val) => _fiat = val;

  void incrementFiat(double amount) => fiat = fiat + amount;

  bool hasFiat() => _fiat != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // // "idLocked" field.
  // List<String>? _idLocked;
  // List<String> get idLocked => _idLocked ?? const [];
  // set idLocked(List<String>? val) => _idLocked = val;

  // void updateIdLocked(Function(List<String>) updateFn) {
  //   updateFn(_idLocked ??= []);
  // }

  // bool hasIdLocked() => _idLocked != null;

  static OrderDataItemStruct fromMap(Map<String, dynamic> data) =>
      OrderDataItemStruct(
        key: data['Key'] as String?,
        id: data['Id'] as String?,
        rev: data['Rev'] as String?,
        uuid: data['uuid'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        expiryAt: data['expiryAt'] as String?,
        merchantId: data['merchantId'] as String?,
        userId: data['userId'] as String?,
        lpId: data['lpId'] as String?,
        pair: data['pair'] as String?,
        token: data['token'] as String?,
        timestamp: data['timestamp'] as String?,
        orderType: data['orderType'] as String?,
        status: data['status'] as String?,
        reffNumber: data['reffNumber'] as String?,
        qrCode: data['qrCode'] as String?,
        signature: data['signature'] as String?,
        balance: data['balance'] as String?,
        lpAdminId: data['lpAdminId'] as String?,
        profitLoss: data['profitLoss'] as String?,
        // states: getStructList(
        //   data['states'],
        //   OrderStateItemStruct.fromMap,
        // ),
        // lpBank: BankModelStruct.maybeFromMap(data['lpBank']),
        // userBank: BankModelStruct.maybeFromMap(data['userBank']),
        // isDisable: data['isDisable'] as bool?,
        // vwap: castToType<double>(data['vwap']),
        // fiat: castToType<double>(data['fiat']),
        // price: castToType<double>(data['price']),
        // idLocked: getDataList(data['idLocked']),
      );

  static OrderDataItemStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderDataItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Key': _key,
        'Id': _id,
        'Rev': _rev,
        'uuid': _uuid,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'expiryAt': _expiryAt,
        'merchantId': _merchantId,
        'userId': _userId,
        'lpId': _lpId,
        'pair': _pair,
        'token': _token,
        'timestamp': _timestamp,
        'orderType': _orderType,
        'status': _status,
        'reffNumber': _reffNumber,
        'qrCode': _qrCode,
        'signature': _signature,
        'balance': _balance,
        'lpAdminId': _lpAdminId,
        'profitLoss': _profitLoss,
        // 'states': _states?.map((e) => e.toMap()).toList(),
        // 'lpBank': _lpBank?.toMap(),
        // 'userBank': _userBank?.toMap(),
        // 'isDisable': _isDisable,
        'vwap': _vwap,
        'fiat': _fiat,
        'price': _price,
        // 'idLocked': _idLocked,
      };

  // @override
  // Map<String, dynamic> toSerializableMap() => {
  //       'Key': serializeParam(
  //         _key,
  //         ParamType.String,
  //       ),
  //       'Id': serializeParam(
  //         _id,
  //         ParamType.String,
  //       ),
  //       'Rev': serializeParam(
  //         _rev,
  //         ParamType.String,
  //       ),
  //       'uuid': serializeParam(
  //         _uuid,
  //         ParamType.String,
  //       ),
  //       'createdAt': serializeParam(
  //         _createdAt,
  //         ParamType.String,
  //       ),
  //       'updatedAt': serializeParam(
  //         _updatedAt,
  //         ParamType.String,
  //       ),
  //       'expiryAt': serializeParam(
  //         _expiryAt,
  //         ParamType.String,
  //       ),
  //       'merchantId': serializeParam(
  //         _merchantId,
  //         ParamType.String,
  //       ),
  //       'userId': serializeParam(
  //         _userId,
  //         ParamType.String,
  //       ),
  //       'lpId': serializeParam(
  //         _lpId,
  //         ParamType.String,
  //       ),
  //       'pair': serializeParam(
  //         _pair,
  //         ParamType.String,
  //       ),
  //       'token': serializeParam(
  //         _token,
  //         ParamType.String,
  //       ),
  //       'timestamp': serializeParam(
  //         _timestamp,
  //         ParamType.String,
  //       ),
  //       'orderType': serializeParam(
  //         _orderType,
  //         ParamType.String,
  //       ),
  //       'status': serializeParam(
  //         _status,
  //         ParamType.String,
  //       ),
  //       'reffNumber': serializeParam(
  //         _reffNumber,
  //         ParamType.String,
  //       ),
  //       'qrCode': serializeParam(
  //         _qrCode,
  //         ParamType.String,
  //       ),
  //       'signature': serializeParam(
  //         _signature,
  //         ParamType.String,
  //       ),
  //       'balance': serializeParam(
  //         _balance,
  //         ParamType.String,
  //       ),
  //       'lpAdminId': serializeParam(
  //         _lpAdminId,
  //         ParamType.String,
  //       ),
  //       'profitLoss': serializeParam(
  //         _profitLoss,
  //         ParamType.String,
  //       ),
  //       'states': serializeParam(
  //         _states,
  //         ParamType.DataStruct,
  //         isList: true,
  //       ),
  //       'lpBank': serializeParam(
  //         _lpBank,
  //         ParamType.DataStruct,
  //       ),
  //       'userBank': serializeParam(
  //         _userBank,
  //         ParamType.DataStruct,
  //       ),
  //       'isDisable': serializeParam(
  //         _isDisable,
  //         ParamType.bool,
  //       ),
  //       'vwap': serializeParam(
  //         _vwap,
  //         ParamType.double,
  //       ),
  //       'fiat': serializeParam(
  //         _fiat,
  //         ParamType.double,
  //       ),
  //       'price': serializeParam(
  //         _price,
  //         ParamType.double,
  //       ),
  //       'idLocked': serializeParam(
  //         _idLocked,
  //         ParamType.String,
  //         isList: true,
  //       ),
  //     }.withoutNulls;

  // static OrderDataItemStruct fromSerializableMap(Map<String, dynamic> data) =>
  //     OrderDataItemStruct(
  //       key: deserializeParam(
  //         data['Key'],
  //         ParamType.String,
  //         false,
  //       ),
  //       id: deserializeParam(
  //         data['Id'],
  //         ParamType.String,
  //         false,
  //       ),
  //       rev: deserializeParam(
  //         data['Rev'],
  //         ParamType.String,
  //         false,
  //       ),
  //       uuid: deserializeParam(
  //         data['uuid'],
  //         ParamType.String,
  //         false,
  //       ),
  //       createdAt: deserializeParam(
  //         data['createdAt'],
  //         ParamType.String,
  //         false,
  //       ),
  //       updatedAt: deserializeParam(
  //         data['updatedAt'],
  //         ParamType.String,
  //         false,
  //       ),
  //       expiryAt: deserializeParam(
  //         data['expiryAt'],
  //         ParamType.String,
  //         false,
  //       ),
  //       merchantId: deserializeParam(
  //         data['merchantId'],
  //         ParamType.String,
  //         false,
  //       ),
  //       userId: deserializeParam(
  //         data['userId'],
  //         ParamType.String,
  //         false,
  //       ),
  //       lpId: deserializeParam(
  //         data['lpId'],
  //         ParamType.String,
  //         false,
  //       ),
  //       pair: deserializeParam(
  //         data['pair'],
  //         ParamType.String,
  //         false,
  //       ),
  //       token: deserializeParam(
  //         data['token'],
  //         ParamType.String,
  //         false,
  //       ),
  //       timestamp: deserializeParam(
  //         data['timestamp'],
  //         ParamType.String,
  //         false,
  //       ),
  //       orderType: deserializeParam(
  //         data['orderType'],
  //         ParamType.String,
  //         false,
  //       ),
  //       status: deserializeParam(
  //         data['status'],
  //         ParamType.String,
  //         false,
  //       ),
  //       reffNumber: deserializeParam(
  //         data['reffNumber'],
  //         ParamType.String,
  //         false,
  //       ),
  //       qrCode: deserializeParam(
  //         data['qrCode'],
  //         ParamType.String,
  //         false,
  //       ),
  //       signature: deserializeParam(
  //         data['signature'],
  //         ParamType.String,
  //         false,
  //       ),
  //       balance: deserializeParam(
  //         data['balance'],
  //         ParamType.String,
  //         false,
  //       ),
  //       lpAdminId: deserializeParam(
  //         data['lpAdminId'],
  //         ParamType.String,
  //         false,
  //       ),
  //       profitLoss: deserializeParam(
  //         data['profitLoss'],
  //         ParamType.String,
  //         false,
  //       ),
  //       states: deserializeStructParam<OrderStateItemStruct>(
  //         data['states'],
  //         ParamType.DataStruct,
  //         true,
  //         structBuilder: OrderStateItemStruct.fromSerializableMap,
  //       ),
  //       lpBank: deserializeStructParam(
  //         data['lpBank'],
  //         ParamType.DataStruct,
  //         false,
  //         structBuilder: BankModelStruct.fromSerializableMap,
  //       ),
  //       userBank: deserializeStructParam(
  //         data['userBank'],
  //         ParamType.DataStruct,
  //         false,
  //         structBuilder: BankModelStruct.fromSerializableMap,
  //       ),
  //       isDisable: deserializeParam(
  //         data['isDisable'],
  //         ParamType.bool,
  //         false,
  //       ),
  //       vwap: deserializeParam(
  //         data['vwap'],
  //         ParamType.double,
  //         false,
  //       ),
  //       fiat: deserializeParam(
  //         data['fiat'],
  //         ParamType.double,
  //         false,
  //       ),
  //       price: deserializeParam(
  //         data['price'],
  //         ParamType.double,
  //         false,
  //       ),
  //       idLocked: deserializeParam<String>(
  //         data['idLocked'],
  //         ParamType.String,
  //         true,
  //       ),
  //     );

  // @override
  // String toString() => 'OrderDataItemStruct(${toMap()})';

  // @override
  // bool operator ==(Object other) {
  //   const listEquality = ListEquality();
  //   return other is OrderDataItemStruct &&
  //       key == other.key &&
  //       id == other.id &&
  //       rev == other.rev &&
  //       uuid == other.uuid &&
  //       createdAt == other.createdAt &&
  //       updatedAt == other.updatedAt &&
  //       expiryAt == other.expiryAt &&
  //       merchantId == other.merchantId &&
  //       userId == other.userId &&
  //       lpId == other.lpId &&
  //       pair == other.pair &&
  //       token == other.token &&
  //       timestamp == other.timestamp &&
  //       orderType == other.orderType &&
  //       status == other.status &&
  //       reffNumber == other.reffNumber &&
  //       qrCode == other.qrCode &&
  //       signature == other.signature &&
  //       balance == other.balance &&
  //       lpAdminId == other.lpAdminId &&
  //       profitLoss == other.profitLoss &&
  //       listEquality.equals(states, other.states) &&
  //       lpBank == other.lpBank &&
  //       userBank == other.userBank &&
  //       isDisable == other.isDisable &&
  //       vwap == other.vwap &&
  //       fiat == other.fiat &&
  //       price == other.price &&
  //       listEquality.equals(idLocked, other.idLocked);
  // }

  // @override
  // int get hashCode => const ListEquality().hash([
  //       key,
  //       id,
  //       rev,
  //       uuid,
  //       createdAt,
  //       updatedAt,
  //       expiryAt,
  //       merchantId,
  //       userId,
  //       lpId,
  //       pair,
  //       token,
  //       timestamp,
  //       orderType,
  //       status,
  //       reffNumber,
  //       qrCode,
  //       signature,
  //       balance,
  //       lpAdminId,
  //       profitLoss,
  //       states,
  //       lpBank,
  //       userBank,
  //       isDisable,
  //       vwap,
  //       fiat,
  //       price,
  //       idLocked
  //     ]);
}

OrderDataItemStruct createOrderDataItemStruct({
  String? key,
  String? id,
  String? rev,
  String? uuid,
  String? createdAt,
  String? updatedAt,
  String? expiryAt,
  String? merchantId,
  String? userId,
  String? lpId,
  String? pair,
  String? token,
  String? timestamp,
  String? orderType,
  String? status,
  String? reffNumber,
  String? qrCode,
  String? signature,
  String? balance,
  String? lpAdminId,
  String? profitLoss,
  // BankModelStruct? lpBank,
  // BankModelStruct? userBank,
  bool? isDisable,
  double? vwap,
  double? fiat,
  double? price,
}) =>
    OrderDataItemStruct(
      key: key,
      id: id,
      rev: rev,
      uuid: uuid,
      createdAt: createdAt,
      updatedAt: updatedAt,
      expiryAt: expiryAt,
      merchantId: merchantId,
      userId: userId,
      lpId: lpId,
      pair: pair,
      token: token,
      timestamp: timestamp,
      orderType: orderType,
      status: status,
      reffNumber: reffNumber,
      qrCode: qrCode,
      signature: signature,
      balance: balance,
      lpAdminId: lpAdminId,
      profitLoss: profitLoss,
      // lpBank: lpBank ?? BankModelStruct(),
      // userBank: userBank ?? BankModelStruct(),
      isDisable: isDisable,
      vwap: vwap,
      fiat: fiat,
      price: price,
    );
