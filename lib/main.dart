import 'package:flutter/material.dart';
import 'package:taskdayone/firstApp.dart';
import 'package:taskdayone/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Welcome Heba Ibrahem First app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
            child: Text(
              'Hello this is My first flutter app', style: TextStyle(fontSize: 30, color: Colors.purple),
            ),),
            Padding(padding: EdgeInsets.all(10),
            child: MaterialButton(child: Text("Sign in" ,style: TextStyle(fontSize: 20, color:Colors.white),),color:Colors.blue ,height: 50,minWidth: double.infinity,
             onPressed: (){Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> SignIn()));},),),
            Padding(padding: EdgeInsets.all(10),
            child: MaterialButton(child: Text("Posts page" ,style: TextStyle(fontSize: 20, color:Colors.white),),color:Colors.blue ,height: 50,minWidth: double.infinity,
             onPressed: (){Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> FirstApp()));},),)
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
          
        ),
      
      ),
     
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Navigator.push(context, 
      //     MaterialPageRoute(builder: (context)=> SignIn()));
      //   },
      //   tooltip: 'Increment',
      //   child: Text("Go to login page"),
      // ),
    );
  }
}
