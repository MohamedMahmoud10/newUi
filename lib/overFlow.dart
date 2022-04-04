

import 'package:flutter/material.dart';

class OverFlowww extends StatelessWidget {
  const OverFlowww({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SelectableText(
            'Hi Mohamed Mahmoud Mohamed I Am Your Girl Friend 5',style: TextStyle(fontSize: 30),
            showCursor: true,
            toolbarOptions: ToolbarOptions(
              copy: true,
              cut: false,
              selectAll: true,
              paste: true,
            ),
          ),
          const SizedBox(height: 2),
          Container(
            color: Colors.tealAccent,
            height: 40,
            width: 200,
            child: const Text(
                'Hi Mohamed Mahmoud Mohamed I Am Your Girl Friend 1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                overflow: TextOverflow.clip),
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.redAccent,
            height: 40,
            width: 200,
            child: const Text(
              'Hi Mohamed Mahmoud Mohamed I Am Your Girl Friend 2',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.lightBlueAccent,
            height: 40,
            width: 200,
            child: const Text(
                'Hi Mohamed Mahmoud Mohamed I Am Your Girl Friend 3',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                overflow: TextOverflow.fade),
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.blueGrey,
            height: 40,
            width: 200,
            child: const Text(
                'Hi Mohamed Mahmoud Mohamed I Am Your Girl Friend 4',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                overflow: TextOverflow.visible),
          ),
        ],
      ),
    );
  }
}
