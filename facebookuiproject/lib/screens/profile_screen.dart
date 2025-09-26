import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            color: Colors.grey[300],
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 122),
                    Icon(Icons.add_to_photos),
                    Text("Add cover photo"),
                  ],
                ),
                SizedBox(height: 60),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Positioned(
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 55,
                        child: Icon(
                          Icons.person,
                          size: 105,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Koperundevan I",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(width: 15),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 15),
              MaterialButton(
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5),
                ),
                textColor: Colors.white,
                onPressed: () {},
                child: Text(
                  "+ Add to story",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 15),
              MaterialButton(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5),
                ),
                textColor: Colors.black,
                onPressed: () {},
                child: Text(
                  "Edit profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 15),
              MaterialButton(
                minWidth: 50,
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5),
                ),
                textColor: Colors.black,
                onPressed: () {},
                child: Text(
                  "...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(height: 3, width: double.infinity, color: Colors.grey[300]),
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: 10),
              Text(
                "People you may know",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 190),
              Icon(Icons.cancel_outlined),
            ],
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 8),
                addfriends("lib/asset/image/ronaldo img.webp", "Thiru"),
                SizedBox(width: 8),
                addfriends("lib/asset/image/person 2img.png", "Vimal"),
                SizedBox(width: 8),
                addfriends("lib/asset/image/person img.png", "Thanigaivelan"),
                SizedBox(width: 8),
                addfriends("lib/asset/image/sivan img.jpg", "Siva"),
                SizedBox(width: 8),
                addfriends("lib/asset/image/person 3 img.png", "Jagath"),
                SizedBox(width: 8),
                addfriends("lib/asset/image/person4img.png", "Vishwa"),
                SizedBox(width: 8),
                addfriends("lib/asset/image/person5img.png", "Jeeva"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column addfriends(String image, String name) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 220,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 0.3, color: Colors.black54),
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Image(image: AssetImage(image)),
                  ),
                  SizedBox(height: 8),
                  Text(name),
                  SizedBox(height: 30),
                  MaterialButton(
                    minWidth: 100,
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(5),
                    ),
                    textColor: Colors.blueAccent,
                    onPressed: () {},
                    child: Text(
                      "Add",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
