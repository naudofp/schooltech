import 'dart:math';

import 'package:flutter/material.dart';
import 'package:schooltech/app_controller.dart';

class HomeStudent extends StatefulWidget {
  @override
  State<HomeStudent> createState() {
    return HomeStudentState();
  }
}

class HomeStudentState extends State<HomeStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuBurguer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 177, 136),
        title: const Text(
          'SchoolTech',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        actions: [SwitchTheme()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/avatar_male.png',
                  width: 200,
                  height: 200,
                ))
          ],
        ),
      ),
    );
  }
}

class MenuBurguer extends StatelessWidget {
  const MenuBurguer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black87),
              accountName: Text('Fellipe'),
              accountEmail: Text('felipenaudof@gmail.com')),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Your University'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Your courses'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout_sharp),
            title: Text('Logout'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      ),
    );
  }
}

class SwitchTheme extends StatelessWidget {
  const SwitchTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDark,
        onChanged: (value) => {AppController.instance.changeTheme()});
  }
}
