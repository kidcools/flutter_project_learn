/// extraAttr : null
/// errorCode : 0
/// msg : "操作成功"
/// data : ""
/// totalProperty : 0
/// success : true

class ResponseVo<T> {
  ResponseVo({
      dynamic extraAttr, 
      num? errorCode, 
      String? msg, 
      T? data,
      num? totalProperty, 
      bool? success,}){
    _extraAttr = extraAttr;
    _errorCode = errorCode;
    _msg = msg;
    _data = data;
    _totalProperty = totalProperty;
    _success = success;
}

  /*ResponseVo.fromJson(dynamic json) {
    _extraAttr = json['extraAttr'];
    _errorCode = json['errorCode'];
    _msg = json['msg'];
    _data = json['data']?.;
    _totalProperty = json['totalProperty'];
    _success = json['success'];
  }*/
  dynamic _extraAttr;
  num? _errorCode;
  String? _msg;
  T? _data;
  num? _totalProperty;
  bool? _success;
ResponseVo copyWith({  dynamic extraAttr,
  num? errorCode,
  String? msg,
  String? data,
  num? totalProperty,
  bool? success,
}) => ResponseVo(  extraAttr: extraAttr ?? _extraAttr,
  errorCode: errorCode ?? _errorCode,
  msg: msg ?? _msg,
  data: data ?? _data,
  totalProperty: totalProperty ?? _totalProperty,
  success: success ?? _success,
);
  dynamic get extraAttr => _extraAttr;
  num? get errorCode => _errorCode;
  String? get msg => _msg;
  T? get data => _data;
  num? get totalProperty => _totalProperty;
  bool? get success => _success;

  @override
  String toString() {
    return 'ResponseVo{_extraAttr: $_extraAttr, _errorCode: $_errorCode, _msg: $_msg, _data: $_data, _totalProperty: $_totalProperty, _success: $_success}';
  }

/*  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['extraAttr'] = _extraAttr;
    map['errorCode'] = _errorCode;
    map['msg'] = _msg;
    map['data'] = _data;
    map['totalProperty'] = _totalProperty;
    map['success'] = _success;
    return map;
  }*/

}