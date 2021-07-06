import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ImageUrl =
        "https://scontent.fbom10-2.fna.fbcdn.net/v/t1.6435-9/93520183_2282506858712703_9011033827312664576_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=nmlZ_TKRgu0AX8QcbB-&_nc_ht=scontent.fbom10-2.fna&oh=414dd385d728aabb6c7b0e2c67c6ed47&oe=60E918D9";
    return Drawer(
      elevation: 10,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Harshad Sonawane"),
                accountEmail: Text("sonawaneharshad@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.info,
                color: Colors.white,
              ),
              title: Text(
                "About us",
                textScaleFactor: 1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
