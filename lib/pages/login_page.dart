import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

// explore pub.dev website for more widgets
// also we can use fonts from google fonts from pub.dev
// it has build in library

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // const MyApp({Key? key}) : super(key: key);

  String username = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('./assests/images/login_image.png', fit: BoxFit.cover),
            Text(
              "Welcome $username",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      username = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 60),

                  InkWell(
                    onTap:() async {
                          setState(() {
                            changeButton = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 60 : 150,
                      height: 60,

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(
                          changeButton ? 20 : 8,
                        ),
                      ),
                      child:
                          changeButton
                              ? Icon(Icons.done, color: Colors.white, size: 30)
                              : Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                    ),
                  ),

                  // ElevatedButton(onPressed: () {
                  //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(150, 60),
                  //     backgroundColor: const Color.fromARGB(255, 76, 93, 219),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  //   child: Text("Login",
                  //     style: TextStyle(
                  //       fontSize: 22,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  //   ),
                  // style: ButtonStyle(
                  //   foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  // ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
