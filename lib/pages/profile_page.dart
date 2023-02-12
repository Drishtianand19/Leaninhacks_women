import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color.fromARGB(100, 171, 38, 50),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 35, 34, 34),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'home_page');
          },
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Color.fromARGB(255, 35, 34, 34),
            size: 25,
          ),
        ),
      ),
    );
  }
}
