import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            //curve: Curves.easeIn,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1350086629264863233/ydwSLiHl_400x400.jpg"),
                  ),
                  accountName: Text("Yusuf Raza"),
                  accountEmail: Text("yusuf@gmail.com"))),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              textScaleFactor: 1.2,
              "Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              textScaleFactor: 1.2,
              "Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.white,
            ),
            title: Text(
              textScaleFactor: 1.2,
              "Email me",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
