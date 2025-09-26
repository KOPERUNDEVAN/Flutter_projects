import 'package:facebookuiproject/screens/friends_screen.dart';
import 'package:facebookuiproject/screens/home_screen.dart';
import 'package:facebookuiproject/screens/menu_screen.dart';
import 'package:facebookuiproject/screens/notification_screen.dart';
import 'package:facebookuiproject/screens/profile_screen.dart';

import 'package:facebookuiproject/screens/reels_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
              fontSize: 27,
            ),
          ),
          actions: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
            SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.search_rounded, size: 35, color: Colors.black),
            ),
            SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.message, color: Colors.black),
            ),
          ],
          actionsPadding: EdgeInsets.all(10),
          bottom: TabBar(
            indicatorWeight: 6,
            dividerHeight: 6,
            indicatorColor: Colors.blueAccent,
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.group)),
              Tab(icon: Icon(Icons.ondemand_video_sharp)),
              Tab(icon: Icon(Icons.person_outline)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.menu)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            FriendsScreen(),
            ReelsScreen(),
            ProfileScreen(),
            NotificationScreen(),
            MenuScreen(),
          ],
        ),
      ),
    );
  }
}
