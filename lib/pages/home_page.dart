import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {


    int days = 30;
    String name = "Utsav";

    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text("Day 2 of practice"),
           ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $days days flutter practice by ${name[0]}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
