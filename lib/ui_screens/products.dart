import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
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
            "Stock Items",
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
              margin: EdgeInsets.only(right:25.0),
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
            indicatorColor: Colors.green,
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
                text: "Items",
              ),
              Tab(
                text: "Services",
              ),
              Tab(
                text: "Settings",
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
                  StockItemCard(
                    name: "Item Name",
                    type: "Category",
                    balance: "52,000",

                  ),
                  StockItemCard(
                    name: "Item Name",
                    type: "Category",
                    balance: "52,000",

                  ),
                ],
              ),
              StockItemCard(
                name: "Item Name",
                type: "Category",
                balance: "52,000",

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


//Stock Item Component
class StockItemCard extends StatelessWidget {
  final name;
  final type;
  final balance;

  const StockItemCard({
    Key key,
    this.name,
    this.type,
    this.balance,
  }) : super(key: key);

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
                  padding:
                  EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  width: 140.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        balance,
                        style: TextStyle( color: Colors.cyan),
                      ),
                      Text(
                        "Available",
                        style: TextStyle( fontSize: 10.0,color: Colors.cyan),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
               // top: 182,
                left: 0,
bottom: 00,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.height * 0.23,
                  height: 90.0,
                  padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold)),
                              Text(
                                type,
                                style: TextStyle(color: Colors.grey),
                              ),

                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 35.0),
                            child: Icon(Icons.tune,),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rs. 12,000",
                                  style: TextStyle(
                                      color: Colors.orange)),
                              Text(
                                "Product Cost",
                                style: TextStyle(color: Colors.grey,fontSize: 8.0),
                              ),

                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rs. 12,000",
                                  style: TextStyle(
                                      color: Colors.cyan)),
                              Text(
                                "Sale Price",
                                style: TextStyle(color: Colors.grey,fontSize: 8.0),
                              ),

                            ],
                          ),

                        ],
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