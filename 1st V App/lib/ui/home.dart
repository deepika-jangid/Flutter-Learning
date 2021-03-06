
import 'package:flutter/material.dart';

myapp(){
  var MyText = Text('Welcome to Flutter',
    textDirection: TextDirection.ltr,
     );

  mypress1(){
    print("Contact Details");
   }

   mypress2(){
    print("Deepika Jangid");
    }

  var MyEmailIcon = Icon(Icons.email);
  var MyEmailIconButton = IconButton(icon: MyEmailIcon, onPressed: mypress1);
  
  
  var MyProfileIcon = Icon(Icons.person, );
  var MyProfileIconButton = IconButton(icon: MyProfileIcon, onPressed: mypress2);

  var MyAppBar = AppBar(title: MyText,
    actions: <Widget>[MyEmailIconButton, MyProfileIconButton],
    backgroundColor: Colors.blueGrey[500],
    );

  var url = "https://raw.githubusercontent.com/deepika-jangid/Flutter-Learning/master/1st%20V%20App/Images/Avatar.jpeg";
  var MyImage = Image.network(url,
    width: double.infinity, 
    height: double.infinity,); 
  var MyHome = Scaffold(appBar: MyAppBar,
    body: MyImage,
    backgroundColor: Colors.grey.shade200,);

  var materialapp = MaterialApp(home: MyHome,
    debugShowCheckedModeBanner: false,);
 
  var Design = materialapp;
  return Design;
}