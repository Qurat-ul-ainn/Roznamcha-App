import 'package:flutter/material.dart';
import '../constClass/ui_components_constants.dart';

class PartiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            "Party Accounts",
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
              margin: EdgeInsets.only(right:15.0),
              height: 20,
              width: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.grey[300],
                onPressed: () {
                  //on press function
                },
                child: Text(
                  "?",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.cyan,
            indicatorColor: Colors.cyan,
            unselectedLabelColor: Colors.grey,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 4.0,
                color: Colors.cyan,
              ),
              insets: EdgeInsets.symmetric(horizontal: 40.0,),
            ),
            tabs: [
              Tab(
                text: "Customers",
              ),
              Tab(
                text: "Suppliers",
              ),
              Tab(
                text: "Employees",
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CardComponent(
                    name: "Accounts Head",
                    type: "Type",
                    blnceClr: Colors.grey[500],
                    creditClr: Colors.grey[500],
                    debitCredit: "Debit/Credit",
                    balance: "Balance",
                    number: "+92-123-456789",
                  ),
                  CardComponent(
                    name: "Accounts Head",
                    type: "Type",
                    blnceClr: Colors.orangeAccent,
                    creditClr: Colors.orangeAccent,
                    debitCredit: "Debit/Credit",
                    balance: "Balance",
                    number: "+92-123-456789",
                  ),
                ],
              ),
              CardComponent(
                name: "Accounts Head",
                type: "Type",
                blnceClr: Colors.grey[500],
                creditClr: Colors.grey[500],
                debitCredit: "Debit/Credit",
                balance: "Balance",
                number: "+92-123-456789",
              ),
            ],
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
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
      ),
    );
  }
}
