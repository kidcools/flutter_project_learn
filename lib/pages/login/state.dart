import 'package:get/get.dart';

class LoginState {
  // title
  final _title = "kidcools".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
}
