import 'package:flutter/material.dart';

class RowsCols extends StatefulWidget {
  const RowsCols({Key? key}) : super(key: key);

  @override
  _RowsColsState createState() => _RowsColsState();
}

class _RowsColsState extends State<RowsCols> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Columns')),
      body: Container(
          color: Colors.yellow,
          height: 150,
          width: w,
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              Container(height: 30, width: 30, color: Colors.red),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Text('hello'),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Container(height: 30, width: 30, color: Colors.red),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Text('hello'),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Container(height: 30, width: 30, color: Colors.red),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Text('hello'),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Container(height: 30, width: 30, color: Colors.red),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Text('hello'),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Container(height: 30, width: 30, color: Colors.red),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
              Text('hello'),
              Container(height: 30, width: 30, color: Colors.blue),
              Container(height: 30, width: 30, color: Colors.green),
            ],
          )
          // Column(
          //   children: [
          //     Container(height: 30, width: 30, color: Colors.red),
          //     Container(height: 30, width: 30, color: Colors.blue),
          //     Container(height: 30, width: 30, color: Colors.green),
          //     Text('hello'),
          //     Container(height: 30, width: 30, color: Colors.blue),
          //     Container(height: 30, width: 30, color: Colors.green),
          //   ],
          // )
          // Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          // Container(height: 30, width: 30, color: Colors.red),
          // Container(height: 30, width: 30, color: Colors.blue),
          // Container(height: 30, width: 30, color: Colors.green),
          // Text('hello'),
          // Container(height: 30, width: 30, color: Colors.blue),
          // Container(height: 30, width: 30, color: Colors.green),
          //     ])
          ),
    );
  }
}
