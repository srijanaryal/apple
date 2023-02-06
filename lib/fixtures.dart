import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) {
  runApp(fixtures());
}

class fixtures extends StatelessWidget {
  const fixtures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('IPL 2023 Fixtures')),
        body: GestureDetector(
          onTap: () {
            launch('https://www.iplt20.com/matches/schedule/men');
          },
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset('images/fixtures.jpg'),
              Text(
                'Click above to Load Fixtures',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )
            ],
          ),
        ));
  }
}
