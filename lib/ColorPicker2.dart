import 'package:flutter/material.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  final _colorNotifier = ValueNotifier<Color>(Colors.green);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: ValueListenableBuilder<Color>(
            valueListenable: _colorNotifier,
            builder: (_, color, __) {
              return ColorPicker(
                color: color,
                onChanged: (value) => color = value,
              );
            },
          ),
        ),
      ),
    );
  }
}



