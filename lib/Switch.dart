
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Switch1 extends StatefulWidget {
  const Switch1({Key? key}) : super(key: key);

  @override
  State<Switch1> createState() => _Switch1State();
}

class _Switch1State extends State<Switch1> {
  ThemeMode tm=ThemeMode.light;
  bool _swlValue=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white,canvasColor: Colors.white),
      darkTheme: ThemeData(primaryColor: Colors.white,canvasColor: Colors.pink),
      themeMode: tm,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: Container(
          alignment: Alignment.center,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text('Light'),
              const Padding(padding: EdgeInsets.all(30)),
              Switch(
                activeColor:Colors.black87 ,
              inactiveTrackColor: Colors.blue,
              value:_swlValue ,
                onChanged:(value){
                setState(() {
                  _swlValue = value ;
                  if(_swlValue==false) {tm=ThemeMode.light;}
                  else {tm = ThemeMode.dark;}
                });
                } ,
              ),
              const Padding(padding: EdgeInsets.all(30)),
              const Text('Dark'),
            ],
          ) ,
        ),
      ),
    );
  }
}
