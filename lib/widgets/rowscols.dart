import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Columns')),
      body: Container(
          height: 200,
          width: w,
          color: Colors.yellow,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 60, width: 60, color: Colors.red),
                Container(height: 60, width: 60, color: Colors.blue),
                Container(height: 60, width: 60, color: Colors.green),
                Container(height: 60, width: 60, color: Colors.black),
                Container(height: 60, width: 60, color: Colors.purple),
              ])
          //  Wrap(
          //   direction: Axis.vertical,
          //   alignment: WrapAlignment.start,
          //   // mainAxisAlignment: MainAxisAlignment.start,
          //   // crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          // Container(height: 60, width: 60, color: Colors.red),
          // Container(height: 60, width: 60, color: Colors.blue),
          // Container(height: 60, width: 60, color: Colors.green),
          // Container(height: 60, width: 60, color: Colors.black),
          // Container(height: 60, width: 60, color: Colors.purple),
          //   ],
          // ),
          //     Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Container(height: 60, width: 60, color: Colors.red),
          //     Container(height: 60, width: 60, color: Colors.blue),
          //     Container(height: 60, width: 60, color: Colors.green),
          //     Container(height: 60, width: 60, color: Colors.black),
          //     Container(height: 60, width: 60, color: Colors.purple),
          //   ],
          // )
          ),
    );
  }
}
