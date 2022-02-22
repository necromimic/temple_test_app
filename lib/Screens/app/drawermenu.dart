import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/app/temple.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding:  EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Jesada Sommana'), 
            accountEmail: Text('jesada.somm62@sskru.ac.th'),
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(size: 40.0,),
              backgroundColor: Colors.black12,
            ),),
          ListTile(
            leading: Icon(Icons.house_rounded),
            title: Text('หน้าแรก'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TemplePage()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.house_rounded),
            title: Text('ข้อมูลส่วนตัว'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TemplePage()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.house_rounded),
            title: Text('ออกจากระบบ'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
            },
          ),
        ],
      )
      );
  }
}