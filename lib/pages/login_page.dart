import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

// explore pub.dev website for more widgets
// also we can use fonts from google fonts from pub.dev
// it has build in library

class Login extends StatelessWidget {
  const Login({super.key});

  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(	
        child:Column(
        children: [
          Image.asset('./assests/images/login_image.png', fit: BoxFit.cover),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),	
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",                    
                  ),
                ),
                SizedBox(height: 60),

                ElevatedButton(onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }, 
                  style: TextButton.styleFrom(
                    minimumSize: Size(150, 60),
                    backgroundColor: const Color.fromARGB(255, 76, 93, 219),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Login",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
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
