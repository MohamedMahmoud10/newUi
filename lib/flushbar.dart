import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

class FlushBar extends StatefulWidget {
 final Function ()fun ;

  FlushBar(this.fun);

  @override
  State<FlushBar> createState() => _FlushBarState();
}

class _FlushBarState extends State<FlushBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Center(
        child:buildElevatedButtonfFlsuhBaR(context) ,
      ),
    );
  }

  ElevatedButton buildElevatedButtonfFlsuhBaR(BuildContext context) {
    return ElevatedButton(
        child: const Text('Click Me!'),
        onPressed: () {
          Flushbar(
           mainButton:  TextButton(
             child: const Text('Undo!'),
             onPressed: (){
               Navigator.of(context).pop();
             },
           )
            ,icon: const Icon(Icons.message),
            flushbarPosition:FlushbarPosition.TOP ,
            titleColor: Colors.deepOrange,
            title: 'Welcome Again',
            titleSize: 30,
            backgroundColor: Colors.blueGrey.withOpacity(0.3),
            messageText: const Text(
              'Please DO Not Empty The Text Field',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ).show(context);
        },
      );
  }
}
