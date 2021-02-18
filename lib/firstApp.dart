import 'package:flutter/material.dart';
import 'package:taskdayone/MyCard.dart';
import 'package:taskdayone/models/postModel.dart';

import 'services/postService.dart';

class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  // List<String> imgs=["https://picsum.photos/300/200?random=1","https://picsum.photos/300/200?random=2",
  // "https://picsum.photos/300/200?random=4","https://picsum.photos/300/200?random=5",];

  String img = "https://picsum.photos/300/200?random";

  // ignore: deprecated_member_use
  List<Post> postList = new List();
  @override
  void initState() { 
    super.initState();
    getPostFromJson();
  }

  getPostFromJson() async {
    postList = await PostService().getposts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Posts"),
      ),
      body: 
      ListView.builder(
          padding: const EdgeInsets.all(8),
          //  itemCount: imgs.length,
           itemCount: postList.length,
           itemBuilder: (BuildContext context, int index) {
            return MyCard(title:  "Intro To Flutter $index",
                          imgLink: img,
                          subTitle: postList[index].title,
                          body:postList[index].body);
          

              
              // ListView(children: [
              // MyCard(title: "Intro To Flutter", ),
              // MyCard(title: "Intro To Flutter2", ),
              // MyCard(title: "Intro To Flutter3",),
              // MyCard(title: "Intro To Flutter4", )
              
                  },),);
              
    
  }
}