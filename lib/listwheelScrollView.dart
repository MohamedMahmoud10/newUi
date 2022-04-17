import 'package:flutter/material.dart';

class ListWheel extends StatefulWidget {
  const ListWheel({Key? key}) : super(key: key);

  @override
  State<ListWheel> createState() => _ListWheelState();
}

class _ListWheelState extends State<ListWheel> {
  List<String> monthes = [
    ' JANUARY',
    '2 ) FEBRUARY ',
    '3 ) MARCH',
    '4 ) APRIL',
    '  5 ) MAY',
    '  6 ) JUNE',
    ' 7 ) JULY',
    ' 8 ) AUGUST',
    '9 ) SEPTEMBER',
    ' 10) OCTOBER',
    '11) NOVEMBER',
    '12) DECEMBER',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListWheelScrollView(
            itemExtent:100,
            children: [
              ...monthes.map((String name) {
                return Container(
                  decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(10),
                    border: Border.all(width: 5,color: Colors.teal)
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: Text(name,style:const TextStyle(fontSize: 25,fontWeight: FontWeight.w700) ,),
                  ),
                );
              })

            ],

          ),
        ),
    );
  }
}
