import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  List tags = ['Travel', 'Photography', 'Lifestyle', 'Fashion', 'Food'];
  List categories = ['Featured', 'Art', 'Music', 'Fashion', 'Studio'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09031D),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        backgroundColor: Color(0xff09031D),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
          
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 7),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Carr Pratt',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 17,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Nairobi - KE',
                              style: TextStyle(
                                color: Colors.white,
                                wordSpacing: 2,
                                letterSpacing: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 38, left: 38, top: 15, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '5K',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: 0.2,
                      height: 22,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '287',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ]
                    ),
                    Container(
                      color: Colors.white,
                      width: 0.2,
                      height: 22,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(33)),
                        gradient: LinearGradient(
                          colors: [Color(0xff6D0EB3), Color(0xff4059F1)],
                          begin: Alignment.bottomRight,
                          end: Alignment.centerLeft,
                        )
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    border: Border.all(color: Colors.white12),
                  ),
                  margin: EdgeInsets.only(right: 13),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13, bottom: 5, right: 20, left: 20),
                    child: Text(
                      tags[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.vertical(top: Radius.circular(34)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 33, right: 25, left: 25),
                    child: Text(
                      'Portfolio',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25, left: 25),
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 17, top: 3),
                          child: index == 1? 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                categories[index],
                                style: TextStyle(
                                  color: Color(0xff434AE8),
                                  fontSize: 19
                                ),
                              ),
                              CircleAvatar(
                                radius: 2,
                                backgroundColor: Color(0xff434AE8),
                              ),
                            ],
                          ):
                          Text(
                            categories[index],
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontSize: 19
                            )
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Align(alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.only(right: 25, left: 25),
                            height: 200,
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 4,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) => Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                  child: Image.asset('assets/img${index + 1}.jpg', fit: BoxFit.cover),
                                ),
                              ),
                              staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 3 : 1),
                              mainAxisSpacing: 9,
                              crossAxisSpacing: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}