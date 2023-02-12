/* import 'package:chatapp/helper/helper_function.dart';
import 'package:chatapp/pages/auth/login_page.dart';
import 'package:chatapp/service/auth_service.dart';
import 'package:chatapp/service/database_service.dart';
import 'package:chatapp/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart'; */
/* import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*  String userName = "";
  String email = "";
  AuthService authService = AuthService();
  Stream? groups;
  bool _isLoading = false;
  String groupName = ""; */

  /* @override
  void initState() {
    super.initState();
    gettingUserData();
  } */

/*   // string manipulation
  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  gettingUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
    // getting the list of snapshots in our stream
    await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .getUserGroups()
        .then((snapshot) {
      setState(() {
        groups = snapshot;
      });
    });
  }
 */
  /* final user = FirebaseAuth.instance.currentUser!;
  // sign user out method
  Future<void> signUserOut() async {
    await FirebaseAuth.instance.signOut();
  } */

  //for the search bar for the lawyers
  String searchValue = '';
  final List<String> _suggestions = [
    'Anu Sharma ',
    'Aman Gupta',
    'Rahul Kumar',
    'Tanish Jain',
    'Raza Siddiqui',
    'Alia Hassan',
    'Mandeep Singh',
    'Navya Banerjee',
    'Prerna Jain',
    'Yashank Aggarwal'
  ];
  Future<List<String>> _fetchSuggestions(String searchValue) async {
    await Future.delayed(const Duration(milliseconds: 7));

    return _suggestions.where((element) {
      return element.toLowerCase().contains(searchValue.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
          elevation: 0.0,
          title: const Text(
            'Search Lawyer',
            textAlign: TextAlign.center,
          ),
          onSearch: (value) => (() => searchValue = value),
          suggestions: _suggestions),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 10),
            children: [
              //home
              ListTile(
                  leading: const Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'home_page');
                  }),

              //info panel
              ListTile(
                  leading: const Icon(
                    Icons.edit_document,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Information Panel',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'info_panel');
                  }),
              //Resources
              ListTile(
                  leading: const Icon(
                    Icons.video_camera_back,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Resources',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'resources_screen');
                  }),
              //Share your story
              ListTile(
                  leading: const Icon(
                    Icons.stream_outlined,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Share your Story',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'story_screen');
                  }),
              //profile
              ListTile(
                  leading: const Icon(
                    Icons.person_2_rounded,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Profile',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'profile_page');
                  }),
              //about us
              ListTile(
                  leading: const Icon(
                    Icons.info_rounded,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'About Us',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'about_screen');
                  }),
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //spacing
            const SizedBox(
              height: 30,
            ),
            //first lawyer
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Mr. Rahul Kumar",
                        style: TextStyle(
                          color: Color.fromARGB(255, 35, 34, 34),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Experience : 2 years",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Successful Cases : 10",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 35, 34, 34),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'chat_screen');
                          },
                          child: const Center(
                            child: Text(
                              "Chat",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 20, 10, 30),
                    child: const Icon(
                      Icons.person_2_rounded,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
            //spacing
            const SizedBox(
              height: 30,
            ),
            //second lawyer
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Mrs. Anu Sharma",
                        style: TextStyle(
                          color: Color.fromARGB(255, 35, 34, 34),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Experience : 3 years",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Successful Cases : 12",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 35, 34, 34),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'chat_screen');
                          },
                          child: const Center(
                            child: Text(
                              "Chat",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 20, 10, 30),
                    child: const Icon(
                      Icons.person_2_rounded,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
            //spacing
            const SizedBox(
              height: 30,
            ),
            //third lawyer
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Mr. Raza Siddiqui",
                        style: TextStyle(
                          color: Color.fromARGB(255, 35, 34, 34),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Experience : 1 year",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Successful Cases : 5",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 35, 34, 34),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'chat_screen');
                          },
                          child: const Center(
                            child: Text(
                              "Chat",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 20, 10, 30),
                    child: const Icon(
                      Icons.person_2_rounded,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */
import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*  String userName = "";
  String email = "";
  AuthService authService = AuthService();
  Stream? groups;
  bool _isLoading = false;
  String groupName = ""; */

  /* @override
  void initState() {
    super.initState();
    gettingUserData();
  } */

/*   // string manipulation
  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  gettingUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
    // getting the list of snapshots in our stream
    await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .getUserGroups()
        .then((snapshot) {
      setState(() {
        groups = snapshot;
      });
    });
  }
 */
  /* final user = FirebaseAuth.instance.currentUser!;
  // sign user out method
  Future<void> signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }*/

  String dropdownvalue = 'Fees';

  // List of options in our dropdown menu
  var items = [
    'Fees',
    'Area of expertise',
    'Experience',
  ];

  //for the search bar for the lawyers
  String searchValue = '';
  final List<String> _suggestions = [
    'Anu Sharma ',
    'Aman Gupta',
    'Rahul Kumar',
    'Tanish Jain',
    'Raza Siddiqui',
    'Alia Hassan',
    'Mandeep Singh',
    'Navya Banerjee',
    'Prerna Jain',
    'Yashank Aggarwal'
  ];
  Future<List<String>> _fetchSuggestions(String searchValue) async {
    await Future.delayed(const Duration(milliseconds: 7));

    return _suggestions.where((element) {
      return element.toLowerCase().contains(searchValue.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
          elevation: 0.0,
          title: const Text(
            'Search Lawyer',
            textAlign: TextAlign.center,
          ),
          onSearch: (value) => (() => searchValue = value),
          suggestions: _suggestions),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 10),
            children: [
              //home
              ListTile(
                  leading: const Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'home_page');
                  }),

              //info panel
              ListTile(
                  leading: const Icon(
                    Icons.edit_document,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Information Panel',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'info_panel');
                  }),
              //Resources
              ListTile(
                  leading: const Icon(
                    Icons.video_camera_back,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Resources',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'resources_screen');
                  }),
              //Share your story
              ListTile(
                  leading: const Icon(
                    Icons.stream_outlined,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Share your Story',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'story_screen');
                  }),
              //profile
              ListTile(
                  leading: const Icon(
                    Icons.person_2_rounded,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'Profile',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'profile_page');
                  }),
              //about us
              ListTile(
                  leading: const Icon(
                    Icons.info_rounded,
                    color: Color.fromARGB(255, 35, 34, 34),
                    size: 30,
                  ),
                  title: const Text(
                    'About Us',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'about_screen');
                  }),
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //spacing
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Filter :',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,
                  alignment: Alignment.centerLeft,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),

            //first lawyer
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Mr. Rahul Kumar",
                        style: TextStyle(
                          color: Color.fromARGB(255, 35, 34, 34),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Experience : 2 years",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Successful Cases : 10",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 35, 34, 34),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'chat_screen');
                          },
                          child: const Center(
                            child: Text(
                              "Chat",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 20, 10, 30),
                    child: const Icon(
                      Icons.person_2_rounded,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
            //spacing
            const SizedBox(
              height: 30,
            ),
            //second lawyer
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Mrs. Anu Sharma",
                        style: TextStyle(
                          color: Color.fromARGB(255, 35, 34, 34),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Experience : 3 years",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Successful Cases : 12",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 35, 34, 34),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'chat_screen');
                          },
                          child: const Center(
                            child: Text(
                              "Chat",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 20, 10, 30),
                    child: const Icon(
                      Icons.person_2_rounded,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
            //spacing
            const SizedBox(
              height: 30,
            ),
            //third lawyer
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 171, 38, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Mr. Raza Siddiqui",
                        style: TextStyle(
                          color: Color.fromARGB(255, 35, 34, 34),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Experience : 1 year",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Successful Cases : 5",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 35, 34, 34),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'chat_screen');
                          },
                          child: const Center(
                            child: Text(
                              "Chat",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 20, 10, 30),
                    child: const Icon(
                      Icons.person_2_rounded,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
