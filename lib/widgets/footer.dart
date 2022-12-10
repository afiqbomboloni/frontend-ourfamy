import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homePage');
            },
            icon: const Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/articleListPage');
            },
            icon: const Icon(Icons.note),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/eventListPage');
            },
            icon: const Icon(Icons.event),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.people),
          ),
        ],
      ),
    );
  }
}
