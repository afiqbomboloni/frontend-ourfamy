import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:ourfamy/model/signup.dart';

import 'package:ourfamy/widgets/text_field.dart';
import 'package:ourfamy/provider/register_provider.dart';
import 'package:ourfamy/ui/login/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var usernameController = TextEditingController();

    Future<void> _registration() async {
      String name = nameController.text.trim();
      String username = usernameController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      SignUpBody signUpBody = SignUpBody(
          name: name, username: username, email: email, password: password);
      var provider = Provider.of<RegisterProvider>(context, listen: false);
      await provider.postData(signUpBody);
      if (provider.isBack) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  const LoginPage()),
        );
      }
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: Consumer<RegisterProvider>(builder: (context, data, child) {
          return data.loading
              ? Center(
            child: Container(
              child: SpinKitThreeBounce(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: index.isEven ? Colors.red : Colors.green,
                    ),
                  );
                },
              ),
            ),
          )
              : SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 100),

                        const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: const Text(
                      'Buat Akun Baru,',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                //app logo
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: const Text(
                      'Dengan membuat akun, kamu akan menikmati semua fitur pada OurFamy',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                //your nama
                AppTextField(
                    textController: nameController,
                    hintText: "Nama",
                    icon: Icons.person),
                const SizedBox(
                  height: 20,
                ),
                //your username
                AppTextField(
                    textController: usernameController,
                    hintText: "Username",
                    icon: Icons.account_box,
                    ),
                const SizedBox(
                  height: 20,
                ),
                //your email
                AppTextField(
                    textController: emailController,
                    hintText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                //yourpassword
                AppTextField(
                    textController:passwordController,
                    hintText: "Password",
                    icon: Icons.password,
                    isObscure: true,),
                const SizedBox(
                  height: 20 + 20,
                ),
                //sign up button
                GestureDetector(
                  onTap: () {
                    _registration();
                  },
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 23),
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    decoration: BoxDecoration(
                        color: const Color(0xffD12269),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                        ]),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //tag line
                RichText(
                    text: TextSpan(
                        text: "Have an account already?",
                        style: TextStyle(
                            color: Colors.grey[500], fontSize: 20))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                //sign up options
                RichText(
                    text: TextSpan(
                        text:
                        "Sign up using one of the following methods",
                        style: TextStyle(
                            color: Colors.grey[500], fontSize: 16))),
              ],
            ),
          );
        }));
  }
}