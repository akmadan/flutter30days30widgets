import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  _DismissibleWidgetState createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Grapes', 'Banana'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dismissible Package')),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                  ));
                }
              },
              key: Key(fruit),
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ));
        },
      ),
    );
  }
}
