import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.black,
          title: Text('Container and SizedBox'),
        ),
        body: Center(
          child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  // shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(20),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20, spreadRadius: 5, color: Colors.black)
                  ]),
              child: Center(
                  child:
                      Container(margin: EdgeInsets.all(10), color: Colors.red)
                  // Text('Hello', style: TextStyle(fontSize: 20))
                  )),
        )
        // SizedBox(height: 100, width: 50, child: Text('Hello')),
        );
  }
}
