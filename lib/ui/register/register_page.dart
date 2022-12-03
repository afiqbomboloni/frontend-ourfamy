import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text(
              'Buat Akun Baru,',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
              'Dengan membuat akun, kamu akan menikmati semua fitur pada OurFamy',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 2),
            child: Text(
              'Nama',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 2, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nama Lengkap',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 2),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 2, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan Email',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 2),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 2, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 2, 20, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Daftar'),
            ),
          ),
        ],
      ),
    );
  }
}
