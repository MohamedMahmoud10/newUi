import 'package:flutter/material.dart';

class Snackbar1 extends StatefulWidget {
   const Snackbar1({Key? key}) : super(key: key);

  @override
  State<Snackbar1> createState() => _Snackbar1State();

}

class _Snackbar1State extends State<Snackbar1> {
  String str = ' Flutter Demo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(str),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Click Me'),
          onPressed: () {
            setState(() {
              str='';
            });
            final SnackBar sBar = SnackBar(
              action: SnackBarAction(
                label:'Undo!' ,
                textColor: Colors.lightGreen,
                onPressed: (){
                  setState(() {
                    str='Flutter Demo';
                  });
                },
              ),
              content: const Text('Hi Mohamed'),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(sBar);
          },
        ),
      ),
    );
  }
}
