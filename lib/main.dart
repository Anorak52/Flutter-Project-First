import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart'; //для открытия ссылок

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false, //отключение дебаг ленты
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(  //та плоская штука сверху
      title: Text('Anorak Studio Presents'),
      centerTitle: true,
      backgroundColor: Colors.grey[850],
    ),
    body: 
    Row(
      children: <Widget> [
        Expanded(
          flex: 1,
            child: Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.amber,
            child: Image.asset('assets/image1.jpg')//Text("One")
          ),
        ),
        Expanded(
          flex: 3,
            child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.grey,
            child: Text("Two")
          ),
        )
      ]
    ),
    // Center(
    //   child: Image.asset('assets/image1.jpg'),
    //  ),
     //backgroundColor: Colors.blueGrey[800],
     bottomNavigationBar: BottomAppBar(
       color: Colors.grey[850],
       shape: const CircularNotchedRectangle(),
       child: Container(height: 50.0,),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: () async{  //отсюда
         const url = 'https://flutter.su';
         if(await canLaunch(url)){
           await launch(url);
         } //до сюда все это для ссылки в кнопке
       },
       child: Text('click'),
       backgroundColor: Colors.yellowAccent[700],
     ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
  }
}