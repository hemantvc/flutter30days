import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://pbs.twimg.com/profile_images/1438374148590374914/PhBLUhSD_400x400.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Hemant"),
                  accountEmail: Text("hemantvcp@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )),
            const ListTile(
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
            ),
            const ListTile(
              title: Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
            ),
            const ListTile(
              title: Text(
                "Email",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
