import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.purple.withOpacity(0.1),
                    child: IconButton(
                      padding: EdgeInsets.all(15.0),
                      icon: Icon(Icons.send),
                      color: Colors.purple,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Send',
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.blue.withOpacity(0.1),
                    child: IconButton(
                      padding: EdgeInsets.all(15.0),
                      icon: Icon(Icons.credit_card),
                      color: Colors.blue,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Pay',
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.orange.withOpacity(0.1),
                    child: IconButton(
                      padding: EdgeInsets.all(15.0),
                      icon: Icon(Icons.receipt),
                      color: Colors.orange,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Request',
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.pink.withOpacity(0.1),
                    child: IconButton(
                      padding: EdgeInsets.all(15.0),
                      icon: Icon(Icons.monetization_on),
                      color: Colors.pink,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Invoice',
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.purpleAccent.withOpacity(0.1),
                    child: IconButton(
                      padding: EdgeInsets.all(15.0),
                      icon: Icon(Icons.favorite),
                      color: Colors.purpleAccent,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Charity',
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.deepPurple.withOpacity(0.1),
                    child: IconButton(
                      padding: EdgeInsets.all(15.0),
                      icon: Icon(Icons.attach_money),
                      color: Colors.deepPurple,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Loan',
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0),
        Divider(),
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  'Wealth comes from proper money management. Keep an eye on your money',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 40.0),
              Material(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.blueAccent.withOpacity(0.1),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Colors.blueAccent,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
