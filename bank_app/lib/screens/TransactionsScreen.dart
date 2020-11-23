import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset("assets/images/profile.jpg", fit: BoxFit.contain)
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello", 
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "Lila Fila", 
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pinkAccent, Colors.pink[400]]),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "Total Transaction Amount", 
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "\$56M", 
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 42),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          "ALL TRANSACTIONS",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(55, 65, 104, 1),
                  ),
                  child: ListTile(
                    title: Text(
                      "Transaction $index", 
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: Text(
                      "A brief description of the transaction $index", 
                      style: TextStyle(color: Colors.white),
                    ),
                    contentPadding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                    trailing: Text(
                      "DEBIT", 
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.greenAccent),
                    ),
                  ),
                ),
              );
            }
          ),
        ),
      ]
    );
  }
}