/// title : "ducafecat wp rest api"

class TestModel {
  TestModel({
    String? title,
  }) {
    _title = title;
  }

  TestModel.fromJson(dynamic json) {
    _title = json['title'];
  }

  String? _title;

  TestModel copyWith({
    String? title,
  }) =>
      TestModel(
        title: title ?? _title,
      );

  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    return map;
  }

  @override
  String toString() {
    return 'TestModel{_title: $_title}';
  }
}
