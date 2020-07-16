import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              profile("images/3.jpg", "Pain Arias", "Tokyo, Japan"),
              description("Hello, I'm Pain. I love making cool photos,"
                  "beautiful architecture and ice-cream"),
              followers(),
              finalGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget profile(String imgPath, String name, String place) {
  return Container(
    height: 130,
    margin: EdgeInsets.only(top: 80.0, left: 20.0, right: 10.0),
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(top: 0, left: 0, bottom: 5),
            padding: EdgeInsets.all(10.0),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                image: DecorationImage(image: AssetImage(imgPath))),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            place,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.black26),
          ),
        ),
      ],
    ),
  );
}

Widget description(String description) {
  return Container(
      padding: EdgeInsets.all(14.0),
      child: Text(
        description,
        style: TextStyle(
          color: Color(0xff52616b),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ));
}

Widget followers() {
  return Container(
    margin: EdgeInsets.all(15.0),
    padding: EdgeInsets.all(15.0),
    color: Colors.white,
    height: 120,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "1789",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Followers",
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              )
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "236",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Following",
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              )
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "990",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Likes",
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget finalGrid() {
  //this first container is the main one,
  return Container(
    margin: EdgeInsets.only(left: 5.0, right: 5.0),
    height: 1000,
    color: Colors.white,
    //first row of container, wrap this with listView/column later.
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        gridImages("images/10.jpg"),
        gridImages("images/8.jpg"),
        gridImages("images/7.jpg"),
        gridImages("images/6.jpg"),
        gridImages("images/5.jpg"),
        gridImages("images/4.jpg"),
        gridImages("images/8.jpg"),
        gridImages("images/7.jpg"),
        gridImages("images/6.jpg"),
        gridImages("images/5.jpg"),
        gridImages("images/4.jpg"),
      ],
    ),
  );
}

Widget gridImages(String path) {
  return Container(
    margin: EdgeInsets.all(10.0),
    width: 300,
    child: ListView(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        height: 250,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage("images/3.jpg"),
            )),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        height: 250,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(path),
            )),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        height: 250,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage("images/6.jpg"),
            )),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        height: 250,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(path),
            )),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        height: 250,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(path),
            )),
      ),
    ]),
  );
}
