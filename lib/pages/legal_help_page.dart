import 'dart:html';

import 'package:flutter/material.dart';

class LegalHelp extends StatefulWidget {
  const LegalHelp({super.key});

  @override
  State<LegalHelp> createState() => _LegalHelpState();
}

class _LegalHelpState extends State<LegalHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Resources for Legal Help',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 35, 34, 34),
          ),
        ),
        backgroundColor: Color.fromARGB(100, 171, 38, 50),
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
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Text(
                    'Template 1: Legal Document for LGBTQ+ Community in India',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 35, 34, 34),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n '
                    'Click here to download ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromARGB(255, 35, 34, 34),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Text(
                    'Template 2: Another Legal Document for LGBTQ+ Community in India',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 35, 34, 34),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n'
                    'Click here to download ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromARGB(255, 35, 34, 34),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Text(
                    'Important Legal Resources for LGBTQ+ Community in India',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '1. Legal Aid Society\n'
                    '2. The Humsafar Trust\n'
                    '3. Naz Foundation (India) Trust\n'
                    '4. LABIA - A Queer Feminist LBT Collective\n'
                    '5. The Alliance India\n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 35, 34, 34),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
