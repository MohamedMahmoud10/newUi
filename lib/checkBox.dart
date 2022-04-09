import 'package:flutter/material.dart';

class checkBox extends StatefulWidget {
  const checkBox({Key? key}) : super(key: key);

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool js = false;

  bool cSharp = false;
  bool dart = false;

  String get Answer {
    String result = 'Your Answer Is\n';
    if (js == true) {
      result += 'Java Script\n';
    }
    if (cSharp == true) {
      result += 'C#\n';
    }
    if (dart == true) {
      result += 'Dart\n';
    } else {
      result += 'None\n';
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              value: js,
              title: const Text('js'),
              onChanged: (value) {
                setState(() {
                  js = value!;
                });
              },
            ),
            CheckboxListTile(
              value: cSharp,
              title: const Text('C#'),
              onChanged: (value) {
                setState(() {
                  cSharp = value!;
                });
              },
            ),
            CheckboxListTile(
              value: dart,
              title: const Text('Dart'),
              onChanged: (value) {
                setState(() {
                  dart = value!;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  var ad = AlertDialog(
                    title: const Text('Check Answer'),
                    content: Container(
                      height: 150,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          const Divider(
                            height: 20,
                          ),
                          Text(Answer)
                        ],
                      ),
                    ),
                  );
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return ad;
                      });
                },
                child: const Text(
                  'Sumbitt',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
