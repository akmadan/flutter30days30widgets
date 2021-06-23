import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:thirty_widgets/widgets/alert.dart';
import 'package:thirty_widgets/widgets/animatedtext.dart';
import 'package:thirty_widgets/widgets/bottomnav.dart';
import 'package:thirty_widgets/widgets/bottomsheet.dart';
import 'package:thirty_widgets/widgets/dismissible.dart';
import 'package:thirty_widgets/widgets/drawer.dart';
import 'package:thirty_widgets/widgets/dropdownlist.dart';
import 'package:thirty_widgets/widgets/form.dart';
import 'package:thirty_widgets/widgets/image.dart';
import 'package:thirty_widgets/widgets/list_grid.dart';
import 'package:thirty_widgets/widgets/rowscols.dart';
import 'package:thirty_widgets/widgets/snackbar.dart';
import 'package:thirty_widgets/widgets/tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter 30 Widgets',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.purple,
        ),
        home: SnackBarWidget());
  }
}
