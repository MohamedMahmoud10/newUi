import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPicker2 extends StatefulWidget {
  const ColorPicker2({Key? key}) : super(key: key);

  @override
  State<ColorPicker2> createState() => _ColorPicker2State();
}

class _ColorPicker2State extends State<ColorPicker2> {
  final List<Color>  _defaultColors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,

  ];
  Color _currentColor = Colors.lime;

  void changeColor(Color color) => setState(() => _currentColor = color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Picker'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Change Color',
            style: TextStyle(color: _currentColor),
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext ctx) {
                  return AlertDialog(
                    title: const Text('Choose Your Favourtie Color'),
                    content: Column(
                    mainAxisSize : MainAxisSize.min,
                      children: [
                        const Divider(
                          color: Colors.black,
                        ),
                       BlockPicker(

                            availableColors : _defaultColors,
                            pickerColor: _currentColor,
                            onColorChanged: changeColor),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'))
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
