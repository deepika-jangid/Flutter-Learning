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
      // backgroundColor: Color(0xFF15202D),
      backgroundColor: Colors.white,
    );
  }
}

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
