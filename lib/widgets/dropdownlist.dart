import 'package:flutter/material.dart';

class Dropdown_Widget extends StatefulWidget {
  const Dropdown_Widget({Key? key}) : super(key: key);

  @override
  _Dropdown_WidgetState createState() => _Dropdown_WidgetState();
}

class _Dropdown_WidgetState extends State<Dropdown_Widget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DropDown List')),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          dropdownValue,
          style: TextStyle(fontSize: 30),
        ),
        Container(
          // height: 100,
          padding: EdgeInsets.all(10),
          child: DropdownButton<String>(
            // itemHeight: 90,
            // isDense: true,
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 26,
            elevation: 16,
            style: const TextStyle(color: Colors.white, fontSize: 20),
            isExpanded: true,
            underline: Container(
              height: 2,
              color: Colors.white,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['One', 'Two', 'Three', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ]),
    );
  }
}
