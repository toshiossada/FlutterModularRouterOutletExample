import 'package:mobx/mobx.dart';

part 'page2_controller.g.dart';

class Page2Controller = _Page2Base with _$Page2Controller;

abstract class _Page2Base with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
