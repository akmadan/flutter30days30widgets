import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              backgroundColor: Colors.grey.shade900,
              content: const Text(
                'This is a snackBar',
                style: TextStyle(color: Colors.white),
              ),
              duration: const Duration(milliseconds: 1500),
              // width: 280.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              action: SnackBarAction(
                label: 'Undo',
                textColor: Colors.white,
                onPressed: () {},
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
