import 'package:flutter/material.dart';

class Rdio extends StatefulWidget {
  const Rdio({Key? key}) : super(key: key);

  @override
  State<Rdio> createState() => _RdioState();
}

class _RdioState extends State<Rdio> {

  String? rst;
  Color? rstColor;
  int radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Guess The Right Answer Of 2+2!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              buildRow(3),
              buildRow(4),
              buildRow(5)
            ],
          ),
        ));
  }

  Row buildRow(int value1) {
    return Row(children: [
      Radio(
          value: value1,
          groupValue: radioValue,
          onChanged: (index) {
            setState(() {
               radioValue=int.parse(index.toString());
                rst = value1 == 4
                    ? 'Correct Answer Congraulations'
                    : 'Sorry But This Is Wrong Answer';
                rstColor = value1 == 4 ? Colors.blue : Colors.redAccent;
               Dialog1();
              },
            );
          }),
      Text('$value1')
    ]);
  }

  Dialog1() {
    var alert = AlertDialog(
      content: Container(
        height: 100,
          child: Column(
        children: [
          Text(
            '$rst',
            style: TextStyle(color: rstColor),
          ),
          Divider(
            color: Colors.black87,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text('The Right Answer Is 4'),
        ],
      )),
    );
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return alert;
        });
  }
}
