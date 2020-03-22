import 'package:flutter/material.dart';

class Page1Page extends StatefulWidget {
  final String title;
  const Page1Page({Key key, this.title = "Page1"}) : super(key: key);

  @override
  _Page1PageState createState() => _Page1PageState();
}

class _Page1PageState extends State<Page1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text(
            'Page 1',
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
