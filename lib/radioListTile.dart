import 'package:flutter/material.dart';

class radioListTile extends StatefulWidget {
  const radioListTile({Key? key}) : super(key: key);

  @override
  State<radioListTile> createState() => _radioListTileState();
}

class _radioListTileState extends State<radioListTile> {
  int _groupVal =0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color:_groupVal==0?Colors.yellow:Colors.teal ,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildRadioListTile(0,'yellow','Change To Yellow'),
              buildRadioListTile(1,'Teal','Change To Teal')
            ],
          ),
        ),
      ),
    );
  }

  RadioListTile<dynamic> buildRadioListTile(int val,txtTitle,txtSupTitle) {
    return RadioListTile(
          value: val,
          groupValue: _groupVal,
          title:Text(txtTitle) ,
          subtitle:Text(txtSupTitle,style: TextStyle(color: Colors.white),) ,
      controlAffinity : ListTileControlAffinity.platform
          ,onChanged: (value){
            setState(() {
              _groupVal=int.parse(value.toString());
            });
          },
        );
  }
}
