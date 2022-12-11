import 'package:flutter/material.dart';
import 'package:ourfamy/ui/home/home_page.dart';

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
              Navigator.pushNamed(context, '/home-page');
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
