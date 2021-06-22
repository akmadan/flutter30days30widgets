import 'package:flutter/material.dart';

class Tabbar_Widget extends StatefulWidget {
  const Tabbar_Widget({Key? key}) : super(key: key);

  @override
  _Tabbar_WidgetState createState() => _Tabbar_WidgetState();
}

class _Tabbar_WidgetState extends State<Tabbar_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'CHATS',
                icon: Icon(Icons.chat),
              ),
              Tab(
                text: 'STATUS',
                icon: Icon(Icons.person),
              ),
              Tab(
                text: 'CALLS',
                icon: Icon(Icons.call),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    ));
  }
}
