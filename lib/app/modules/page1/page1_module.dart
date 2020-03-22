import 'package:ModularPageview/app/modules/page1/page1_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ModularPageview/app/modules/page1/page1_page.dart';

class Page1Module extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Page1Controller()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => Page1Page()),
      ];

  static Inject get to => Inject<Page1Module>.of();
}
