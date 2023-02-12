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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //image of profile
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Image(
                  image: AssetImage("assets/images/profile.png"),
                  height: 100,
                ),
              ),
            ),
            //spacing
            SizedBox(
              height: 10,
            ),
            //name
            Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Name:\t\tABC XYZ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
            ),
            //spacing
            SizedBox(
              height: 20,
            ),
            //Age
            Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Age:\t\t20",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
            ),
            //spacing
            SizedBox(
              height: 20,
            ),
            //City
            Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Gender:\t\tLesbian",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
            ),
            //spacing
            SizedBox(
              height: 20,
            ),
            //Email
            Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Email:\t\tabc123@gmail.com",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
            ),
            //spacing
            SizedBox(
              height: 20,
            ),
            //City
            Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "City:\t\tNew Delhi",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
