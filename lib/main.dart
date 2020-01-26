import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("Buton Türleri"),
          backgroundColor: Colors.deepOrange,
        ),
         body: ButonTurleri(),

      ),
    );
  }

}
class ButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.yellow[200],
   //   margin:EdgeInsets.symmetric(horizontal: 50),

      width:500,
      height:500,

      child: Column(
        children: <Widget>[
          Text("Buton Turleri"),
          RaisedButton(
            onPressed: (){
              debugPrint("Birinci butona tıklandı.");
            },
            color:Colors.greenAccent,
            child:Text("Raised Button1"),
          ),
          RaisedButton(
            onPressed: (){
              debugPrint("İkinci butona tıklandı.");
            },
            color:Colors.pink.shade200,
            child:Text("Raised Button2"),
          ),
          RaisedButton(
            onPressed: uzakFonksiyon,
            color:Colors.blue[300],
            child:Text("Raised Button3"),
          ),

          IconButton(
            color: Colors.deepPurple[200],
            onPressed: (){
              debugPrint("Icon butona tıklandı");
            },
            icon:Icon(
              Icons.all_inclusive,
              color: Colors.black,
              size:50,
            ),
          ),
          FlatButton(
            onPressed: (){
              debugPrint("Flat buttona tıklandı");
            },
            child:Text("Flat Button",style: TextStyle(fontSize: 25),),
          )
        ],
      ),
    );
  }

}
 void uzakFonksiyon(){
  debugPrint("3.butona tıklandi.");
}