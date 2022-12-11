

import 'package:flutter/material.dart';
import 'package:ourfamy/provider/login_provider.dart';
import 'package:ourfamy/ui/home/home_page.dart';
import 'package:provider/provider.dart';
import 'package:ourfamy/common/styles.dart';
import 'package:ourfamy/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String username = '';
  String password = '';
  bool _obscureText = true;
  bool? rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
    rememberMe = newValue;
    if (rememberMe==true) {
      print('clicked');
      }
    else {
      // TODO: Forget the user
    }
  });
  LoginProvider? loginProvider;
  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(BuildContext context) => LoginProvider(),
      child: Scaffold(
      body: Consumer<LoginProvider>(builder: 
      (BuildContext context, LoginProvider value, Widget? child) {
        loginProvider = value;
        return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
        top: 40,
        left: 20,
        right: 20,
      ),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,

              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'myTextTheme.bodyText1',
                      fontStyle: FontStyle.normal,
                      fontSize: 34,
                    ),
                  ),
                ),
              ),
              Align(
                 alignment: Alignment.topLeft,
                        child: Container(
                          child: const Text(
                            'Silahkan Masuk',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      AppTextField(
                    textController: usernameController,
                    hintText: "Username",
                    icon: Icons.account_box,
                    ),

                      // TextFormField(
                      //   controller: value.username,
                      //   decoration: InputDecoration(
                      //     labelStyle: const TextStyle(fontSize: 20),
                      //     hintText: "username",
                      //     fillColor: Colors.white,
                      //     filled: true,

                      //     focusedBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //       borderSide: const BorderSide(
                      //         color: Color(0xff267ac0),
                      //       ),
                      //     ),
                      //  enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //       borderSide:
                      //           const BorderSide(color: Colors.white, width: 0),
                      //     ),
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //     // contentPadding: EdgeInsets.all(20),
                      //   ),
                      //   autofillHints: const [AutofillHints.username],
                      // ),
                      const SizedBox(
                        height: 20.0,
                      ),
                       AppTextField(
                    textController:passwordController,
                    hintText: "Password",
                    icon: Icons.password,
                    isObscure: true,),
                      // Container(
                      //   // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(10)
                      //   ),
                      //   child: TextFormField(
                      //     controller: value.password,
                      //     obscureText: _obscureText,
                      //     decoration: InputDecoration(
                      //       enabledBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //         borderSide: const BorderSide(color: Colors.white, width: 0),
                      //       ),
                      //        focusedBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //         borderSide:const BorderSide(
                      //           color: Color(0xff267ac0),
                      //         ),
                      //       ),
                      //        hintText: 'Password',
                      //       border: InputBorder.none,
                      //       suffixIcon: InkWell(
                      //           onTap: _togglePasswordView,
                      //           child: Icon(
                      //             _obscureText
                      //                 ? Icons.visibility_off
                      //                 : Icons.visibility,
                      //             color: const Color(0xff267ac0),
                      //           )),
                      //       contentPadding: const EdgeInsets.all(20),

                      //     ),
                      //   ),
                      // ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: rememberMe,
                                    onChanged: _onRememberMeChanged,
                                  ),
                                  const Text(
                                    'Ingat Saya',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(16.0),
                               textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                              
                              },
                              child: const Text('Lupa Password'),
                              
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 46,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffD12269),
                            textStyle: const TextStyle(fontSize: 14),
                            minimumSize: const Size.fromHeight(40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          ),
                          child: value.loadingLogin
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                      color: Colors.white),
                                )
                              : const Text('Log In'),
                          
                          onPressed: () {
                            Navigator.pushNamed(context, '/home-page');
                          },
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Belum Punya Akun?',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 14
                              ),
                              
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                                foregroundColor: Colors.blue
                              ),
                              onPressed: () {
                        
                                   Navigator.pushNamed(context, '/registerPage');
                                  
                              },
                              child: const Text('Buat Akun'),
                            )
                          
                          ],
                        ),
                      ),
                          
                      
                      
                    

            ],
          ),
        ),
      ),
    );
      },
      )
      
    )
    );
    
}
}
