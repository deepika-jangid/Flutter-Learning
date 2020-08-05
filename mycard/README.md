# MyCard

Hello learners, As you have learned how to create a *MaterialApp in [Hello World](https://github.com/deepika-jangid/Flutter-Learning/tree/master/Hello%20World)* by - **Deepika**  So now, we are going to create a simple Card app.

## What we will have in the last

<img src="https://user-images.githubusercontent.com/56965382/89400495-9916d080-d731-11ea-96f9-b2328ba1b12d.png" width="100%"></img

### What you will learn

* About Container widget
* Decoration of Container
* About Stack widget
* About Column widget
* About Row widget
* Adding image within container
* Adding Text
* Adding Icons

### Getting Started

**Let's start by creating Material App**

```
import 'package:flutter/material.dart';
import 'package:mycard/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //it includes our runner app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Here will call our statelesswidget myhomepage
      home: MyHomepage(),
    );
  }
}
```
**Now we will create our Homepage**

First we create a stateless wideget 'MyHompage' which will return a scaffold, inside the scaffold we will have our appbar and body, we define our body in another stateless widget named as 'Homebody'.

So as you can see we have Text on our appbar 'My Card', to do so we will use Text widget and pass the text data as string and we can use style property of Text widget to change the fontsize, color, weight and also the font family etc.

Similary we can use the backgroundColor, leading and action widget etc. to decorate the appbar. As you can see we have the roundcorner around the appbar that we can achieve by using shape property.

Scaffold is given white color using backgroundCoolor property.

```
import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  AppBar appBar() {
    return AppBar(
      title: Text(
        "My Card",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.blur_on,
          // color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(
            Icons.inbox,
            // color: Colors.black,
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      backgroundColor: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Homebody(),
      // This is our 'Homebody'
      backgroundColor: Colors.white,
    );
  }
}
```

**Last but not the least Creating Body 'or you can say the card'**

Here we are going to use MediaQuery to get the actual height and widget.

We will return a container of height & width equals to screen further we pass Stack widget as the child of Parent Container 'you acn think of stack as datastructure' which will help us to arrange all children widget one above other inside stack widget, Here we going to have two Container and one with black color and text and icon within it and other above it with avtar inside it.

To fill container with image we have use decoration property.
**Note if you have used decoration you can not use color property of container**

We have used Row widget to get the icon and Text in Row. and wrapped three row widget with column to get all the row in a up two down manner. 

For the alignment we have used Mainaxis and crossaxis alignment of column and also the alignment property of container and stack widget.

```
class Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // we will use MediaQuery to get the actual height and width of device
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: size.height * 0.23,
            width: size.width * 0.58,
            // alignment: Alignment.center,
            margin: EdgeInsets.all(60.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 5),
                  blurRadius: 8,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white54,
                        size: 19,
                      ),
                    ),
                    Text(
                      "Anubhav Gupta",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.alternate_email,
                        color: Colors.white54,
                        size: 19,
                      ),
                    ),
                    Text(
                      "anubhav@mail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.phone_iphone,
                        color: Colors.white54,
                        size: 19,
                      ),
                    ),
                    Text(
                      "9026743253",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/avatar.png'),
                  fit: BoxFit.fill),
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white30,
              ),
            ),
            // child: Stack(),
          ),
        ],
      ),
    );
  }
}
```
