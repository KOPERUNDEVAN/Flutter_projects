import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Friends",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(width: 260),
                Icon(Icons.search, size: 30),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 2),
                Container(
                  height: 30,
                  width: 142,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      );
                    },
                    child: Text(
                      "Friend request",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 30,
                  width: 127,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      );
                    },
                    child: Text(
                      "Your friends",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(height: 0.5, width: double.infinity, color: Colors.grey),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 5),
                Text(
                  "People you may know",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            myaddfriends("lib/asset/image/sivan img.jpg", "Siva"),
            myaddfriends("lib/asset/image/ronaldo img.webp", "Thiru"),
            myaddfriends("lib/asset/image/person 2img.png", "Vimal"),
            myaddfriends("lib/asset/image/person img.png", "Thanigaivelan"),
            myaddfriends("lib/asset/image/person 3 img.png", "Jagath"),
            myaddfriends("lib/asset/image/person4img.png", "Vishwa"),
            myaddfriends("lib/asset/image/person5img.png", "Jeeva"),
            myaddfriends("lib/asset/image/person6img.png", "Santhosh V"),
            myaddfriends("lib/asset/image/person7img.png", "Surya"),
            myaddfriends("lib/asset/image/person8img.jpg", "Nithin"),
          ],
        ),
      ),
    );
  }

  ListTile myaddfriends(String image, String text) {
    return ListTile(
      leading: CircleAvatar(radius: 49, backgroundImage: AssetImage(image)),
      title: Text(
        text,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Container(
            height: 35,
            width: 110,
            child: MaterialButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              textColor: Colors.white,
              onPressed: () {},
              child: Text(
                "Add friend",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 35,
            width: 110,
            child: MaterialButton(
              color: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              textColor: Colors.black,
              onPressed: () {},
              child: Text(
                "Remove",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
