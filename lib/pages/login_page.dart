import 'package:flutter/material.dart';



class Login extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login page",
                    style: TextStyle(
                            fontSize: 40,
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold,
                           ),
                           textScaleFactor: 1.5,
                ),
      ),
    );
}
}