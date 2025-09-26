import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  List<Map<String, dynamic>> adddatas = [
    {"icon": Icons.bookmark, "text": "Saved"},
    {"icon": Icons.history, "text": "Memories"},
    {"icon": Icons.groups, "text": "Groups"},
    {"icon": Icons.slow_motion_video_outlined, "text": "Reels"},
    {"icon": Icons.store, "text": "Marketplace"},
    {"icon": Icons.person_outline, "text": "Find friends"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 7),
                Text(
                  "Menu",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 235),
                Icon(Icons.settings, size: 30),
                SizedBox(width: 10),
                Icon(Icons.search, size: 30),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(Icons.person, color: Colors.black26),
                backgroundColor: Colors.grey[300],
              ),
              title: Text(
                "Koperundevan I",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("See your profile"),
            ),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 80,
                crossAxisSpacing: 2,
                mainAxisSpacing: 10,
              ),
              itemCount: adddatas.length,

              itemBuilder: (context, index) {
                return mygridclass(data: adddatas[index]);
              },
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadiusGeometry.circular(5),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 140),
                    Text(
                      "See more",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1),
            Divider(thickness: 1, color: Colors.grey[300]),
            Row(
              children: [
                SizedBox(width: 12),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadiusGeometry.circular(30),
                  ),
                  child: Icon(Icons.question_mark),
                ),
                SizedBox(width: 10),
                Text(
                  "Help & support",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 180),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            Divider(thickness: 1, color: Colors.grey[300]),
            Row(
              children: [
                SizedBox(width: 14),
                Icon(Icons.settings, color: Colors.grey[400]),
                SizedBox(width: 10),
                Text(
                  "Settings and privacy",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 148),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            Divider(thickness: 1, color: Colors.grey[300]),
            Row(
              children: [
                SizedBox(width: 14),
                Icon(Icons.grid_view_rounded, color: Colors.grey[400]),
                SizedBox(width: 10),
                Text(
                  "Also from Meta",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 178),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            Divider(thickness: 1, color: Colors.grey[300]),
            SizedBox(height: 8,),
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Container(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage("lib/asset/image/instagram.png"),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Instagram",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Container(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage("lib/asset/image/whatsapp.png"),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "WhatsApp",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadiusGeometry.circular(5),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 140),
                    Text(
                      "Log out",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget mygridclass({required data}) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: 15),
              Row(children: [SizedBox(width: 8), Icon(data["icon"])]),
              Row(children: [SizedBox(width: 8), Text(data["text"])]),
            ],
          ),
        ),
      ],
    );
  }
}
