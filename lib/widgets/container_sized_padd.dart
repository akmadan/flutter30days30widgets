import 'package:flutter/material.dart';

class Container_Sized_Padd extends StatelessWidget {
  const Container_Sized_Padd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: // SizedBox(
            //   height: 50,
            //   width: 50,
            // ),
            Container(
          color: Colors.yellow,
          child: Container(
            // margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            padding: EdgeInsets.all(10),
            child: Center(child: Text('Hello Great world ')),
            decoration: BoxDecoration(
                // image: DecorationImage(),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey.shade900,
                      spreadRadius: 10,
                      offset: Offset(10, 5)),
                ],
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        //         Padding(
        //   padding: EdgeInsets.all(10),
        //   child: Container(color: Colors.red),
        // )
      ),
    );
  }
}
