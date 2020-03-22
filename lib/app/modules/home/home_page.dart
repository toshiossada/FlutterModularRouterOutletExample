import 'package:ModularPageview/app/modules/home/home_controller.dart';
import 'package:ModularPageview/app/modules/page1/page1_module.dart';
import 'package:ModularPageview/app/modules/page2/page2_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        pageSnapping: true,
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          RouterOutlet(module: Page1Module()),
          RouterOutlet(module: Page2Module()),
        ],
        onPageChanged: (num) {
          print("Número da página atual : " + num.toString());
        },
      ),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: controller.indexPage,
            onTap: (index) {
              pageController.animateToPage(index,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
              controller.setPage(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.filter_1),
                title: Text('Page 1'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.filter_2),
                title: Text('Page 2'),
              ),
            ],
          );
        },
      ),
    );
  }
}
