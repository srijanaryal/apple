import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toogle/HomePage.dart';
import 'package:toogle/page1.dart';
import 'package:toogle/page2.dart';
import 'package:toogle/page3.dart';

import 'Welcome.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _controller = PageController();

  //keep track if we are on last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [Page1(), Page2(), Page3()],
        ),
        Container(
            alignment: Alignment(0, 0.8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Text('SKIP',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),

                  //Next or done

                  onLastPage
                      ? GestureDetector(
                          child: Text('DONE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          },
                        )
                      : GestureDetector(
                          child: Text('NEXT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                          },
                        )
                ])),
      ],
    ));
  }
}
