import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Color primaryColor = Color.fromRGBO(255, 82, 48, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black54,
                      iconSize: 30.0,
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      color: Colors.black54,
                      iconSize: 30.0,
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              ),
            ),
            Padding(
              EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                width: double.infinity,
                height: 370.0,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0.0, 0.3),
                      blurRadius: 15.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '2800.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Available Balance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.show_chart),
                            onPressed: () {},
                            color: Colors.white,
                            iconSize: 30.0,

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              child: Text(
                'Recent Activity',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}