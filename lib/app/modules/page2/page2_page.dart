import 'package:flutter/material.dart';

class Page2Page extends StatefulWidget {
  final String title;
  const Page2Page({Key key, this.title = "Page2"}) : super(key: key);

  @override
  _Page2PageState createState() => _Page2PageState();
}

class _Page2PageState extends State<Page2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Page 2',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
