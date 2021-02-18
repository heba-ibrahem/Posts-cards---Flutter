import 'package:flutter/material.dart';
import 'package:taskdayone/card.dart';

// ignore: must_be_immutable
class MyCard extends StatefulWidget {

  String imgLink;
  String title;
  String subTitle;
  String body;

  MyCard({
    this.imgLink,
    this.title,
    this.subTitle,
    this.body,
  });
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card( 
      child: Padding(padding: EdgeInsets.all(15),
      child: Stack(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.title, style: TextStyle(fontSize: 30),),
          Image.network(widget.imgLink),
          GestureDetector(child:Text(widget.subTitle, style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),) , onTap: (){
            Navigator.push(context, 
             MaterialPageRoute(builder: (context)=>ImgCard(subTitle: widget.subTitle,imgLink: widget.imgLink,title: widget.title,body: widget.body,)));},),
          
        Row(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
           Row(crossAxisAlignment: CrossAxisAlignment.center, 
           children: <Widget>[
           IconButton(
            icon: Icon(Icons.thumb_up),
             onPressed: () {},),
           Text("Like", style: TextStyle(fontSize: 20))
      ],),

       Row(crossAxisAlignment: CrossAxisAlignment.center, 
           children: <Widget>[
           IconButton(
            icon: Icon(Icons.insert_comment),
             onPressed: () {},
             ),
           Text("Comment", style: TextStyle(fontSize: 20))
      ],),
            // Padding(padding: EdgeInsets.all(5),
            // child: IconButton(child:Text("Comment", style: TextStyle(fontSize: 30), ),
            // onPressed: (){},),
            
            // )
            ],
        )
        ],),
        
      ],),),);
  }
}