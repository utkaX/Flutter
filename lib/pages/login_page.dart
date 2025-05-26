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

  final _formKey = GlobalKey<FormState>();

  String username = "";
  bool changeButton = false;

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await Future.delayed(Duration(seconds: 1));
       setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,

          child: Column(
            children: [
              Image.asset(
                './assests/images/login_image.png',
                fit: BoxFit.cover,
              ),
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),

                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        } else if (value.length < 6) {
                          return "Password should be atleast of 6 length";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 60),

                    Material(
                      color: const Color.fromARGB(255, 14, 136, 235),
                      borderRadius: BorderRadius.circular(
                        changeButton ? 20 : 8,
                      ),
                      child: InkWell(
                        onTap: ()=>moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 60 : 150,
                          height: 60,

                          alignment: Alignment.center,

                          child:
                              changeButton
                                  ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                    size: 30,
                                  )
                                  : Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
