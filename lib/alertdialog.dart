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
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Center(
            child: buildElevatedButtonalertdialog(context)



          ),
        )
    )
    );
  }

  ElevatedButton buildElevatedButtonalertdialog(BuildContext context) {
    return ElevatedButton(
          child:const Text('Click Me') ,
          onPressed: (){
            final AlertDialog alert=AlertDialog(
              title: const Text('Error Message'),
              content: Container(
                height: 150,
                child: Column(
                  children: [
                    const Divider(color:Colors.black ,),
                    const Text('Please Try Again Letter'),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child:ElevatedButton(
                        child:const Text('Close') ,
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                      ) ,
                    )

                  ],
                ),
              ),
            );
            showDialog(context: context, builder:(BuildContext ctx)=>
             alert,barrierDismissible: true,barrierColor: Colors.pink.withOpacity(0.2));
          },
        );
  }
}

