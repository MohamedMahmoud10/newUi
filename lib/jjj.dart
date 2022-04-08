import 'package:flutter/material.dart';

class Home22 extends StatefulWidget {
  const Home22({Key? key}) : super(key: key);

  @override
  State<Home22> createState() => _Home22State();
}

class _Home22State extends State<Home22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: ElevatedButton(
            child: Text('Click Me')
            ,onPressed: (){
    showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Number Of Days'),
        content:TextField(
          autofocus: true,
          onSubmitted: (_)=>Navigator.of(context).pop(),
        ) ,
      actions: [TextButton(onPressed:()=>Navigator.of(context).pop(), child: Text('Exit'))],

    ));
    },
    ),
      ) ,);
  }
}
