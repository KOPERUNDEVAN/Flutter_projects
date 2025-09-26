import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Text("App")),
      body: Column(
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: "Hi how are you",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "\n   Welcome",
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text:
                          "\n bfkdbvlBGLhpjb ef;cbeqofcube \n [f08yh2r-fhn \n ef efhnw08hg08gb vt40wuyt09bgpw ",
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(text: "\n flHIFGG8EP9 37R0YH \n R32UHC9C 3KHJHNJFG7F95 0890HBOBO",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
