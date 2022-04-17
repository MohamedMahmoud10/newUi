import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class Marquuee extends StatefulWidget {
  const Marquuee({Key? key}) : super(key: key);

  @override
  State<Marquuee> createState() => _MarquueeState();
}

class _MarquueeState extends State<Marquuee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 70,
              child:
            Card(
              color: Colors.yellow,
              child: Marquee(
                text: 'Hi My  Name Is Mohamed Mahmoud Mohamed Ali ',

                accelerationCurve: Curves.easeInQuad,
              ),
            ),
            ),

            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 80,
              child: Card(
                color: Colors.yellow,
                child: Marquee(
                  text:
                      'Hi My Friend  Name Is Mostafa Emam Elsaid Ahmed Mostafa ',
                  accelerationCurve: Curves.linearToEaseOut,
                ),
              ),
            ),
          ],
        ));
  }
}
