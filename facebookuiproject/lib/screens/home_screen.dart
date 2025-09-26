import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool myImage = true;
  bool myImage1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(child: Icon(Icons.person)),
                SizedBox(width: 10),
                SizedBox(
                  height: 30,
                  width: 260,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: "What's on your mind?",
                      contentPadding: EdgeInsets.only(top: 10, left: 8),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.image_outlined, color: Colors.orange, size: 25),
              ],
            ),
            SizedBox(height: 15),
            Container(height: 3, width: double.infinity, color: Colors.grey),
            SizedBox(height: 10),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("lib/asset/image/sivan img.jpg"),
                          fit: BoxFit.fill,
                        ),
                        Text("Share your \n music"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            children: [Icon(Icons.person, size: 90)],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Create Story"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Column(
              children: [
                Container(
                  height: 3,
                  width: double.infinity,
                  color: Colors.grey[500],
                ),
              ],
            ),
            SizedBox(height: 8),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "lib/asset/image/houseprofileimg.jpg",
                ),
              ),
              title: Row(
                children: [
                  Text("Mose House Plans"),
                  SizedBox(width: 10),
                  Text(
                    "Follow",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              subtitle: Row(children: [Text("4d ."), Icon(Icons.public)]),
              trailing: Column(children: [Icon(Icons.more_horiz)]),
            ),
            Row(children: [SizedBox(width: 10), Text("Hello everyone!")]),
            Row(
              children: [
                SizedBox(width: 8),
                InkWell(
                  onDoubleTap: () {
                    setState(() {
                      myImage = !myImage;
                    });
                  },
                  child: Container(
                    height: 310,
                    width: 368,
                    child: Image(
                      image: AssetImage("lib/asset/image/houseimg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle_outlined,
                                color: Colors.blueAccent,
                              ),
                              Text(
                                "3 bedroom house floor plans",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "Modern 3 bedroom house designs",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "More about three-bedroom house designs",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "House design ideas for small space",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "How to choose a 3-bedroom ouse design?",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "...",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadiusGeometry.circular(30),
                  ),
                  child: Icon(Icons.favorite, color: Colors.white, size: 10),
                ),
                SizedBox(width: 10),
                Text("22k"),
                SizedBox(width: 140),
                Text(
                  "15k comments",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                SizedBox(width: 10),
                Text(
                  "1.1k shares",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      myImage = !myImage;
                    });
                  },
                  icon: Icon(
                    myImage ? Icons.thumb_up_alt_outlined : Icons.thumb_up,
                    color: myImage ? Colors.black : Colors.blue,
                  ),
                ),

                Text("Like"),
                SizedBox(width: 20),
                Icon(Icons.mode_comment_outlined),
                SizedBox(width: 10),
                Text("Comment"),
                SizedBox(width: 20),
                Icon(Icons.send),
                SizedBox(width: 10),
                Text("Send"),
                SizedBox(width: 20),
                Icon(Icons.share),
                SizedBox(width: 10),
                Text("Share"),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 3,
              width: double.infinity,
              color: Colors.grey[400],
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("lib/asset/image/bmwlogo.jpeg"),
              ),
              title: Row(
                children: [
                  Text("BMW World ."),
                  SizedBox(width: 10),
                  Text(
                    "Follow",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              subtitle: Row(children: [Text("4d ."), Icon(Icons.public)]),
              trailing: Column(children: [Icon(Icons.more_horiz)]),
            ),
            Row(children: [SizedBox(width: 10), Text("BMW")]),
            Row(
              children: [
                SizedBox(width: 8),
                InkWell(
                  onDoubleTap: () {
                    setState(() {
                      myImage1 = !myImage1;
                    });
                  },
                  child: Container(
                    height: 310,
                    width: 368,
                    child: Image(
                      image: AssetImage("lib/asset/image/car.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadiusGeometry.circular(30),
                  ),
                  child: Icon(Icons.favorite, color: Colors.white, size: 10),
                ),
                SizedBox(width: 10),
                Text("25.6k"),
                SizedBox(width: 140),
                Text(
                  "1.4k comments",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                SizedBox(width: 10),
                Text(
                  "25k shares",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      myImage1 = !myImage1;
                    });
                  },
                  icon: Icon(
                    myImage1 ? Icons.thumb_up_alt_outlined : Icons.thumb_up,
                    color: myImage1 ? Colors.black : Colors.blue,
                  ),
                ),

                Text("Like"),
                SizedBox(width: 20),
                Icon(Icons.mode_comment_outlined),
                SizedBox(width: 10),
                Text("Comment"),
                SizedBox(width: 20),
                Icon(Icons.send),
                SizedBox(width: 10),
                Text("Send"),
                SizedBox(width: 20),
                Icon(Icons.share),
                SizedBox(width: 10),
                Text("Share"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
