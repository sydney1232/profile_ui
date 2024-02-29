import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile_ui/animation/FadeAnimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

Widget makeVideo({image}) {
  return AspectRatio(
    aspectRatio: 1.5 / 1,
    child: Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [Colors.black, Colors.black.withOpacity(.3)]),
        ),
        child: const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/emma.jpg"),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black,
                              Colors.black.withOpacity(.3)
                            ]),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FadeAnimation(
                              1,
                              Text(
                                "Emma Watson",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                FadeAnimation(
                                  1.2,
                                  Text(
                                    "60 Videos",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                ),
                                SizedBox(width: 50),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "240k Subscribers",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                        1.6,
                        Text(
                          "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.",
                          style: TextStyle(color: Colors.grey, height: 1.7),
                        ),
                      ),
                      SizedBox(height: 40),

                      //BORN
                      FadeAnimation(
                        1.6,
                        Text(
                          "Born",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      FadeAnimation(
                        1.6,
                        Text(
                          "April, 15th 1990, Paris, France",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      //NATIONALITY
                      FadeAnimation(
                        1.7,
                        Text(
                          "Nationality",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      FadeAnimation(
                        1.7,
                        Text(
                          "British",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      FadeAnimation(
                        1.8,
                        Text(
                          "Video",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      FadeAnimation(
                          1,
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                makeVideo(image: "assets/images/emma-1.jpg"),
                                makeVideo(image: "assets/images/emma-2.jpg"),
                                makeVideo(image: "assets/images/emma-3.jpg"),
                              ],
                            ),
                          )),
                    ],
                  ),
                )
              ]))
            ],
          )
        ],
      ),
    );
  }
}
