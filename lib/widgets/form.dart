import 'package:flutter/material.dart';

class Form_Widget extends StatefulWidget {
  const Form_Widget({Key? key}) : super(key: key);

  @override
  _Form_WidgetState createState() => _Form_WidgetState();
}

class _Form_WidgetState extends State<Form_Widget> {
  final _formKey = GlobalKey<FormState>();
  var firstname = '';
  var lastname = '';
  var email = '';
  var password = '';

  void trysubmit() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if ((isValid)) {
      _formKey.currentState!.save();
      _submitAuthForm(firstname, lastname, email, password);
    }
  }

  _submitAuthForm(var firstname, var lastname, var email, var password) {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Form',
                    style: TextStyle(fontSize: 30),
                  ),
                  TextFormField(
                    key: ValueKey('firstname'),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Enter First Name',
                      suffixIcon: Icon(Icons.person, color: Colors.white),
                      border: InputBorder.none,
                      // contentPadding:
                      //     EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    ),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First Name should not be empty';
                      }

                      return null;
                    },
                    onSaved: (value) {
                      firstname = value.toString();
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    key: ValueKey('lastname'),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Enter Last Name',
                      suffixIcon: Icon(Icons.person, color: Colors.white),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last Name should not be empty';
                      }

                      return null;
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    key: ValueKey('email'),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Enter Email',
                      suffixIcon: Icon(Icons.person, color: Colors.white),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value.toString().isEmpty ||
                          !value.toString().contains('@')) {
                        return 'Email is invalid';
                      }

                      return null;
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    key: ValueKey('password'),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Enter Password',
                      suffixIcon: Icon(Icons.person, color: Colors.white),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value.toString().length < 6) {
                        return 'Password is invalid';
                      }

                      return null;
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () => trysubmit(), child: Text('Submit'))
                ])),
      ),
    );
  }
}
