import 'package:flutter/material.dart';
import 'package:my_profile/profile_pic.dart';
import 'BottomNavBar.dart';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff29cccc),
          title: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  print('Clicked');
                },
              ),
              Text('My Profile'),
            ],
          ),
        ),
        body: MyProfile(),
        bottomNavigationBar: BotomNavBar(),
      ),
    ),
  );
}

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Center(
              child: ProfilePic(),
            ),
            Text(
              'Hello, Vinay Singh',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Premium (29 Days)',
              style: TextStyle(
                color: Colors.cyan.shade300,
                fontSize: 20.0,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 5.0),
                  child: Text(
                    'General',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              color: Colors.white,
              child: TextButton(
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {
                  print('Subscription and payment clicked');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.payment,
                    color: Color(0xff29cccc),
                  ),
                  title: Text(
                    'Subscription & Payment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              color: Colors.white,
              child: TextButton(
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {
                  print('Profile setting clicked');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                      color: Color(0xff29cccc),
                  ),
                  title: Text(
                    'Profile Setting',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              color: Colors.white,
              child: TextButton(
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {
                  print('Password Setting Clicked');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.vpn_key,
                    color: Color(0xff29cccc),
                  ),
                  title: Text(
                    'Password Setting',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              color: Colors.white,
              child: TextButton(
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {
                  print('Notificaton button clicked');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Color(0xff29cccc),
                  ),
                  title: Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Text(
                    'FeedBack',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              color: Colors.white,
              child: TextButton(
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {
                  print('Give FeedBack clicked');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.feedback,
                      color: Color(0xff29cccc),
                  ),
                  title: Text(
                    'Give FeedBack',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              color: Colors.white,
              child: TextButton(
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {
                  print('Bug report clicked');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.bug_report,
                    color: Color(0xff29cccc),
                  ),
                  title: Text(
                    'Bug report',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
