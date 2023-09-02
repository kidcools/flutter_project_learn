/// username : "kidcools"
/// gender : 1

class UserInfo {
  UserInfo({
      String? username, 
      num? gender,}){
    _username = username;
    _gender = gender;
}

  UserInfo.fromJson(dynamic json) {
    _username = json['username'];
    _gender = json['gender'];
  }
  String? _username;
  num? _gender;
UserInfo copyWith({  String? username,
  num? gender,
}) => UserInfo(  username: username ?? _username,
  gender: gender ?? _gender,
);
  String? get username => _username;
  num? get gender => _gender;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['gender'] = _gender;
    return map;
  }

  @override
  String toString() {
    return 'UserInfo{_username: $_username, _gender: $_gender}';
  }
}