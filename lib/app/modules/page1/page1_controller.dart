import 'package:mobx/mobx.dart';

part 'page1_controller.g.dart';

class Page1Controller = _Page1Base with _$Page1Controller;

abstract class _Page1Base with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
