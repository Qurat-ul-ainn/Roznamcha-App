import 'package:flutter/material.dart';

class ExpenseTypesScreen extends StatelessWidget {
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
          "Expanse Types",
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
                ExpenseTypeCard(
                  name: "Expense Type",
                  type: "Type",
                ),
                ExpenseTypeCard(
                  name: "Rent",
                  type: "",
                ),

              ],
            ),
            ExpenseTypeCard(
              name: "Food",
              type: "",
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

//Expense type
class ExpenseTypeCard extends StatelessWidget {
  final name;
  final type;

  const ExpenseTypeCard({Key key, this.name, this.type}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: MediaQuery.of(context).size.height * 0.40,
          width: MediaQuery.of(context).size.height * 0.23,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[100]),
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.greenAccent,
              ],
              begin: const FractionalOffset(0.0, 0.0),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 180,
                left: 0,

                child: Container(
                 padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  width: 140.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Positioned(

                left: 0,
                bottom: 00,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.height * 0.23,
                  height: 90.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(
                            type,
                            style: TextStyle(color: Colors.grey),
                          ),

                         Container(
                           height: 3.0,
                           width: 3.0,
                           margin: EdgeInsets.only(left: 3.0,top: 20.0),
                           color: Colors.cyan,
                         ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Icon(Icons.tune,),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}