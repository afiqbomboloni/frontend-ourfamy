import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: FittedBox(
              child: Image.asset('assets/images/login.webp'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: const Text(
              'Selamat Datang,',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: ElevatedButton(
              onPressed: () {
                // setState(() {
                // });
              },
              child: Text('Login'),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Belum punya akun ? '),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registerPage');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
