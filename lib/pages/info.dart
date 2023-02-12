import 'package:flutter/material.dart';

class InfoPanel extends StatefulWidget {
  const InfoPanel({super.key});

  @override
  State<InfoPanel> createState() => _InfoPanelState();
}

class _InfoPanelState extends State<InfoPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(100, 171, 38, 50),
        title: Text(
          'Indian Laws & Acts',
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
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'harassment');
            },
            child: Container(
              margin: EdgeInsets.all(25),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Harassment at Workplace',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'violence');
            },
            child: Container(
              margin: EdgeInsets.all(25),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Violence',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'authority');
            },
            child: Container(
              margin: EdgeInsets.all(25),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Authority Harrassment',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'gender');
            },
            child: Container(
              margin: EdgeInsets.all(25),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Gender Discrimination',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'others');
            },
            child: Container(
              margin: EdgeInsets.all(25),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Others',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
