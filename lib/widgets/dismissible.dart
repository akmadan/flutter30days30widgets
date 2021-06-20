import 'package:flutter/material.dart';

class Dismissible_Widget extends StatefulWidget {
  const Dismissible_Widget({Key? key}) : super(key: key);

  @override
  _Dismissible_WidgetState createState() => _Dismissible_WidgetState();
}

class _Dismissible_WidgetState extends State<Dismissible_Widget> {
  @override
  List<String> names = [
    'Akshit',
    'Karan',
    'Gaurav',
    'Aasif',
    'Raj',
    'Simran',
    'Aditya'
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'My Friends';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index];
          return Dismissible(
            key: Key(name),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(names[index]),
                  backgroundColor: Colors.red,
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(names[index]),
                  backgroundColor: Colors.green,
                ));
              }
              setState(() {
                names.removeAt(index);
              });
            },
            background: Container(color: Colors.red),
            child: ListTile(title: Text(names[index])),
            secondaryBackground: Container(
              color: Colors.green,
            ),
          );
        },
      ),
    );
  }
}
