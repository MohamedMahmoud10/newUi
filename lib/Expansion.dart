import 'package:flutter/material.dart';
import 'sanckbar.dart';

class Expansion1 extends StatefulWidget {
  Expansion1({Key? key}) : super(key: key);

  @override
  State<Expansion1> createState() => _Expansion1State();
}

class _Expansion1State extends State<Expansion1> {
  String str = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
      body: ListView(children: const [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: ExpansionTile(
            title: Text('Account'),
            children: [
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Sign Up'),
                subtitle: Text('Create A new Account'),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                title: Text('Sign In'),
                subtitle: Text('I Already Have An Account'),
              )
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        ExpansionTile(
          title: Text('Contact Us'),
          children: [
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text('Phone Number'),
              subtitle: Text('Create A new Account'),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text('I Already Have An Account'),
            )
          ],
        )
      ]),
    );
  }
}
