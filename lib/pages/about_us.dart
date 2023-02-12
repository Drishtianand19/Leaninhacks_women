import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About_Us extends StatelessWidget {
  const About_Us({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: 250.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(100, 171, 38, 50),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'home_page');
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new_sharp,
                                color: Color.fromARGB(255, 35, 34, 34),
                                size: 25,
                              ),
                            )),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('About Achroma',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                  SizedBox(height: 20),
                  Positioned(
                      left: 140,
                      top: 150.0,
                      bottom: 20.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset('assets/images/logof.png',
                            height: 90.0,
                            width: 90,
                            scale: 3.8,
                            fit: BoxFit.cover),
                      )),
                ],
              )),
          // Positioned(
          //     left: 140,
          //     top: 150.0,
          //     bottom: 20.0,
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(16.0),
          //       child: Image.asset('assets/app logo.jpg',
          //           height: 90.0, width: 90, scale: 3.8, fit: BoxFit.cover),
          //     )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
                alignment: Alignment.center,
                child: Text(
                    'Individuals in the LGBTQ+ community can connect with lawyers who have expertise in issues faced by the community \n Achroma serves as a resource for the LGBTQ+ community by providing information on laws and acts related to LGBTQ+ rights in India.\n People can share their experiences and know about current laws and acts empowering LGBTQ+ people in India. Achroma helps building a supportive community.',
                    style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w100))),
          ),
        ]),
      ),
    );
  }
}
