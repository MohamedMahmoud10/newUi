import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black87,
            Colors.red,
            Colors.lightGreen,
            Colors.grey,
          ])),
        ),
        centerTitle: true,
        title: const Text(
          'Flutter Demo',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 1),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.translate),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.translate),
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: buildElevatedButton(context),
      ),
    );
  }

  ElevatedButton buildElevatedButton(BuildContext context) {
    return ElevatedButton(
        child: const Text('Click Me'),
        onPressed: ()  {
          final AlertDialog alert =  AlertDialog(
            title: const Text('Alert Message'),

            content: Container(
              height: 100,
              child: Column(
                children: [
                  const Divider(
                    color: Colors.black,
                  ),
                  const Text(
                      'You Push This Item Is In Correct Please Try Again Later!!'),
                 SizedBox(width: double.infinity,

                 child:ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30) )
                   ),

                   child:Text('Close') ,
                   onPressed: (){
                     Navigator.of(context).pop();
                   },
                 ) ,
                 )
                ],
              ),
            ),
          );
          showDialog(context:context,builder: (BuildContext ctx){
            return alert;
          });
        },
      );
  }
}
