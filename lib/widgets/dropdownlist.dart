import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown List'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.all(10),
              height: 70,
              // color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                dropdownColor: Colors.grey.shade200,
                isExpanded: true,
                value: selectedvalue,
                icon: Icon(Icons.arrow_circle_down_rounded),
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedvalue = newvalue!;
                  });
                },
                items: <String>['Orange', 'Apple', 'Banana', 'Mango', 'Grapes']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
              ))
        ]),
      ),
    );
  }
}
