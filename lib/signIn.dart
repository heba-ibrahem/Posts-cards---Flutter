import 'package:flutter/material.dart';
import 'package:taskdayone/firstApp.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Card(
        margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(15),
              child: Text("Email:",textAlign: TextAlign.left ,style: TextStyle(fontSize: 15, ),),),
              Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Enter your Email"),
              ),),
            Padding(padding: EdgeInsets.all(10),
              child: Text("Password:",style: TextStyle(fontSize: 15, )),),
            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Enter your Password"),
              ),),
            Padding(padding: EdgeInsets.all(20),
            child: MaterialButton(child: Text("Sign in" ,style: TextStyle(fontSize: 20, color:Colors.white),),color:Colors.blue ,height: 50,minWidth: double.infinity,
             onPressed: (){Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> FirstApp()));},),),
            // SizedBox(width: 100,height: 50,)
            Padding(padding: EdgeInsets.all(10),
            child: Text("Need an account? Register" ,style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold), ),),
            Padding(padding: EdgeInsets.all(10),
            child: Text("Forget Password",style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold),),)
            
            ],
            
          ),
      

      
    ),
    );
  }
}