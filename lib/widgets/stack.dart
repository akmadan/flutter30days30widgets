import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.black,
          title: Text('Stack'),
        ),
        body: Stack(
          children: [
            Positioned(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/download.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Container(height: 50, width: 50, color: Colors.yellow),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(height: 50, width: 50, color: Colors.yellow),
            )
          ],
        ));
  }
}
