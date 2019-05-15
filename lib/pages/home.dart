import 'package:flutter/material.dart';
import 'about.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: PageView(
          children: <Widget>[
            Center(
                child: Container(
                    child: RaisedButton(
                      child: Text('About'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutPage()),
                        );
                      },
                    )
                )
            ),
            Center(
                child: Container(
                    child: Column(
                      children: <Widget>[
                        Text('Home Page'),
                        TextField(
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                )
            )
          ],
        )
    );
  }
}
