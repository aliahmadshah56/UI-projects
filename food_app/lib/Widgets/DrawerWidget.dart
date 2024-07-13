import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                accountName: Text(
                  'Ali Ahmad Shah',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  'www.a7726867@gmail.com',
                  style: TextStyle(fontSize: 10),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/image.png'),
                ),
              )),
          ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.grey),
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          ListTile(
              leading: Icon(CupertinoIcons.cart_fill, color: Colors.grey),
              title: Text(
                'My Orders',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          ListTile(
              leading: Icon(CupertinoIcons.heart_fill, color: Colors.grey),
              title: Text(
                'My Wish List',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.grey,
              ),
              title: Text(
                'Setting',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ))
        ],
      ),
    );
  }
}
