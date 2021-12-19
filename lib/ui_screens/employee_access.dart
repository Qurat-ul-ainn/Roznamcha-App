import 'package:flutter/material.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class EmployeeAccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Employee Access",
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
          Container(
            margin: EdgeInsets.only(right: 30.0),
            height: 20,
            width: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.grey[300],
              onPressed: () {
                //on press function
              },
              child: Text(
                "?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CardComponent(
                  name: "Account Head",
                  type: "Type",
                  blnceClr: Colors.cyan,
                  creditClr: Colors.cyan,
                  debitCredit: "Debit/Credit",
                  balance: "Balance",
                  number: "...",
                ),
                CardComponent(
                  name: "MCB",
                  type: "Bank",
                  blnceClr: Colors.orangeAccent,
                  creditClr: Colors.orangeAccent,
                  debitCredit: "Credit",
                  balance: "10,000",
                  number: "...",
                ),
              ],
            ),
            CardComponent(
              name: "Ali Khan",
              type: "Lahore",
              blnceClr: Colors.cyan,
              creditClr: Colors.cyan,
              debitCredit: "Debit",
              balance: "52,000",
              number: "...",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
            backgroundColor: Colors.cyan[200],
            hoverElevation: 10,
            splashColor: Colors.grey,
            tooltip: 'Search',
            elevation: 4,
            child: Icon(
              Icons.add,
              size: 50.0,
            ),
            onPressed: () {
              //functionality of adding
            }),
      ),
    );
  }
}
