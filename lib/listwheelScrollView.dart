import 'package:flutter/material.dart';

class ListWheel extends StatefulWidget {
  const ListWheel({Key? key}) : super(key: key);

  @override
  State<ListWheel> createState() => _ListWheelState();
}

class _ListWheelState extends State<ListWheel> {
   static const List<String> monthes = [
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

List<Color> colorList=List.generate(monthes.length, (index) => Colors.primaries[index]);
  @override
  Widget build(BuildContext context) {
    int i =0 ;
    int r=0;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListWheelScrollView(
            itemExtent:100,
            children: [
              ...monthes.map((String name) {
                return Container(
                  decoration: BoxDecoration(
                    color:colorList[i++],
                     borderRadius:BorderRadius.circular(10),
                    border: Border.all(width: 1,color: Colors.red),
                    boxShadow:  [
                      BoxShadow(
                        color: colorList[r++],
                        blurRadius: 10,
                        offset: const Offset(10,10)
                      )

                    ]
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
