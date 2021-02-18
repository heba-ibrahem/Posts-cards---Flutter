import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgCard extends StatefulWidget {
  String imgLink;
  String title;
  String subTitle;
  String body;


  ImgCard({
    this.imgLink,
    this.title,
    this.subTitle,
    this.body,
  });
  @override
  _ImgCardState createState() => _ImgCardState();
}

class _ImgCardState extends State<ImgCard> {
  @override
  Widget build(BuildContext context) {
    return Card( 
      child: Padding(padding: EdgeInsets.all(50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,  
      children: [
        Text(widget.title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueGrey),),
        Text(widget.subTitle, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.purple),),
        Image.network(widget.imgLink),
        Text(widget.body, style: TextStyle(fontSize: 20,  color: Colors.teal),),

      ],),),

      
    );
  }
}