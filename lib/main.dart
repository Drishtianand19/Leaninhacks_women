import 'package:chatapp/helper/helper_function.dart';

import 'package:chatapp/pages/auth/login_page.dart';
import 'package:chatapp/pages/auth/register_page.dart';
import 'package:chatapp/pages/chat_page.dart';
import 'package:chatapp/pages/home_page.dart';
import 'package:chatapp/pages/profile_page.dart';
import 'package:chatapp/shared/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appId,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;

  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Achroma',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primaryColor: const Color.fromARGB(100, 171, 38, 50),
          /*  primaryColor: Constants().primaryColor, */
          scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: _isSignedIn ? HomePage() : const LoginPage(),
      /* initialRoute: 'login_page', */
      routes: {
        'register_screen': (context) => const RegisterPage(),
        'login_page': (context) => const LoginPage(),
        'home_page': (context) => const HomePage(),
        'profile_page': (context) => const ProfilePage(),
        'chat_screen': (context) =>
            const ChatPage(uid: '456', userName: 'Drishti Anand'),
        //'info_panel':(context) =>
        //'resources_screen':(context)=>
        //'story_screen':(context)=>
        //'about_screen':(context)=>
      },
    );
  }
}
