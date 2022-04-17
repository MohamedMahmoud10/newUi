import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? _dropVal;
  List dropItems = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please Select A Letter'),
            DropdownButton(
              hint: Text('Please Chosse An Answer'),
              value: _dropVal,
                items: dropItems.map((item) {
                  return DropdownMenuItem(
                    child: Text(item),
                    value: item,
                  );
                }).toList(),
                onChanged: (newVal) {
                  setState(() {
                    _dropVal = newVal.toString();
                  });
                })
          ],
        ),
      ),
    );
  }
}
