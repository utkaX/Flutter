import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.pinkAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.pinkAccent),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuwQUmzRyup37AIMarZI4OCj_JhN9T1hN0_g&s",
                  ),
                ),
                margin: EdgeInsets.zero,
                accountName: Text("Utsav"),
                accountEmail: Text("utsav@gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.email, color: Colors.white),
              title: Text(
                "Email me",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
