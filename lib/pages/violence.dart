import 'package:flutter/material.dart';

class Violence extends StatefulWidget {
  const Violence({super.key});

  @override
  State<Violence> createState() => _ViolenceState();
}

class _ViolenceState extends State<Violence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(100, 171, 38, 50),
        title: Text(
          'Violence',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 35, 34, 34),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'info_panel');
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
          Container(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                    "Indian Laws and Acts protecting the LGBTQ+ community from Harassment at the Workplace",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(height: 15.0),
                Text(
                    "1. The Indian Penal Code (IPC)\n"
                    "2. The Protection of Civil Rights Act, 1955\n"
                    "3. The Supreme Court's judgement on Section 377 of the IPC",
                    style: TextStyle(fontSize: 18.0)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Legal Help regarding Harassment at the Workplace",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(height: 15.0),
                Text(
                    "1. Report the harassment to the HR department of the company\n"
                    "2. File a complaint with the police\n"
                    "3. Seek legal assistance from a lawyer specializing in workplace harassment cases",
                    style: TextStyle(fontSize: 18.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
