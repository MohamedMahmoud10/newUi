import 'package:flutter/material.dart';

class DismissAble extends StatefulWidget {
  const DismissAble({Key? key}) : super(key: key);

  @override
  State<DismissAble> createState() => _DismissAbleState();
}

class _DismissAbleState extends State<DismissAble> {
  final li = List.generate(20, (index) => 'ItemNum${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: li.length,
        itemBuilder: (ctx, index) {
          final item = li[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (DismissDirection dir) {
              setState(() => li.removeAt(index));
              ScaffoldMessenger.of(ctx).showSnackBar(
                SnackBar(
                  content: Text(dir == DismissDirection.startToEnd
                      ? '$item Deleted'
                      : '$item Liked'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      setState(() {
                        li.insert(index, item);
                      });
                    },
                  ),
                ),
              );
            },
            confirmDismiss: (DismissDirection dir) async {
              if (dir == DismissDirection.startToEnd) {
                final bool res = await showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return AlertDialog(
                        title: Text('Are You Sure To Delte This $item'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                li.removeAt(index);
                              });
                              Navigator.of(ctx).pop();

                            },
                            child: const Text(
                              'Delete',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          TextButton(onPressed:(){
                          Navigator.of(ctx).pop();
                          }, child: Text('Undo',style: TextStyle(color: Colors.black),))
                        ],
                      );
                    });
                return res;
              } else {
                return true;
              }
            },
            child: ListTile(
              title: Center(
                child: Text(item),
              ),
            ),
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Delte',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.delete),
                ],
              ),
            ),
            secondaryBackground: Container(
              color: Colors.blue,
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Liked',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(Icons.thumb_up),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
