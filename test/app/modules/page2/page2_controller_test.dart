import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:ModularPageview/app/modules/page2/page2_controller.dart';
import 'package:ModularPageview/app/modules/page2/page2_module.dart';

void main() {
  initModule(Page2Module());
  Page2Controller page2;

  setUp(() {
    page2 = Page2Module.to.get<Page2Controller>();
  });

  group('Page2Controller Test', () {
    test("First Test", () {
      expect(page2, isInstanceOf<Page2Controller>());
    });

    test("Set Value", () {
      expect(page2.value, equals(0));
      page2.increment();
      expect(page2.value, equals(1));
    });
  });
}
