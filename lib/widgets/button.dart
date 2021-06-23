import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: Colors.black,
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(34),
                  overlayColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: Text(
                  'Press',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Sign in via Google'),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              // style: ButtonStyle(

              //     backgroundColor: MaterialStateProperty.all(Colors.black)),
            ),
          )
        ]),
      ),
    );
  }
}
