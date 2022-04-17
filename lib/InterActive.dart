import 'package:flutter/material.dart';

class InterActiveViewer1 extends StatefulWidget {
  const InterActiveViewer1({Key? key}) : super(key: key);

  @override
  State<InterActiveViewer1> createState() => _InterActiveViewer1State();
}

class _InterActiveViewer1State extends State<InterActiveViewer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Container(
            height: 200,
            width: double.infinity,
            child: InteractiveViewer(

              child: Image.asset('images2/8K.jpg',
              fit: BoxFit.cover,),
            )),
      ),
    );
  }
}
