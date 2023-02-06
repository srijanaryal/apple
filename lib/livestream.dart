import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class livestream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Streaming Sites'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                launch('https://www.webcric.com');
              },
              child: Image.asset('images/livestream.jpg'),
            ),
            InkWell(
              onTap: () {
                launch('https://crichd.vip/');
              },
              child: Image.asset('images/live2.jpg'),
            ),
            InkWell(
              onTap: () {
                launch('https://smartcric.com/');
              },
              child: Image.asset('images/livestream3.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
