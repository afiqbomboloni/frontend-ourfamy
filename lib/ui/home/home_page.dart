import 'package:flutter/material.dart';
import 'package:ourfamy/widget/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            // nama tergatung akun
            child: Text(
              'Halo Justin',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.network(
                'https://i0.wp.com/jeumalaamal.org/wp-content/uploads/2022/08/3df33aba-b588-4b8b-9211-731afe2d8db3.jpg?fit=1280%2C853&ssl=1'),
          ),
        ],
      ),
      bottomSheet: Footer(),
    );
  }
}
