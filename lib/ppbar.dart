import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.deepPurple,
                  Colors.redAccent,
                  Colors.brown,
                  Colors.pinkAccent
                ])),
              ),
              title: const Text(
                'Flutter Demo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.email,
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.email,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.email,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.email,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
