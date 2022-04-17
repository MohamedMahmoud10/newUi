import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutterui/ColorPicker.dart';
import 'package:flutterui/Expansion.dart';
import 'package:flutterui/InterActive.dart';
import 'package:flutterui/alertdialog.dart';
import 'package:flutterui/carsoulImageSlider.dart';
import 'package:flutterui/checkBox.dart';
import 'package:flutterui/dropdown.dart';
import 'package:flutterui/flushbar.dart';
import 'package:flutterui/jjj.dart';
import 'package:flutterui/listwheelScrollView.dart';
import 'package:flutterui/marquee.dart';
import 'package:flutterui/overFlow.dart';
import 'package:flutterui/ppbar.dart';
import 'package:flutterui/radio.dart';
import 'package:flutterui/radioListTile.dart';
import 'package:flutterui/sanckbar.dart';
import 'package:flutterui/Switch.dart';
import 'flushbar.dart';
import 'imagePicker.dart';
import 'DisMissAble.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InterActiveViewer1(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toast',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM_LEFT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}
