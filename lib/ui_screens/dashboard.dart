import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //TabController _controller;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
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
              "Your Business Name",
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
              )
            ],
            bottom: TabBar(
              labelColor: Colors.cyan,
              indicatorColor: Colors.cyan,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Colors.cyan,
                ),
                insets: EdgeInsets.symmetric(horizontal: 61.0,vertical: 4.0),
              ),
              tabs: [
                Tab(
                  text: "Items",
                ),
                Tab(
                  text: "Parties",
                ),
                Tab(
                  text: "Transactions",
                ),
                Tab(
                  text: "Reports",
                ),
              ],
            ),
          ),

          //give body on tab
          bottomNavigationBar: BottomAppBar(
            // color: Colors.white,
            shape: CircularNotchedRectangle(),
            notchMargin: 0.01,
            clipBehavior: Clip.antiAlias,
            child: Container(
              height: kBottomNavigationBarHeight * 0.98,
              child: BottomNavigationBar(
                // onTap: _selectPage,
                // currentIndex: _selectedPageIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: Stack(
                      children: [
                        Container(
                            height: 24.0,
                            width: 80.0,
                            decoration:new BoxDecoration(
                              color: Colors.blue[400],
                                border: Border.all(color: Colors.black,)
                            ),
                            child: Icon(Icons.attach_money,color: Colors.white,)),
                        
                      ],
                    ),
                    title: Text(''),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart,color: Colors.lightBlue,size:20.0 ,),
                    title: Text(''),
                  ),


                ],
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Colors.cyan[200],
              hoverElevation: 10,
              splashColor: Colors.grey,
              tooltip: 'Search',
              elevation: 4,
              child: Icon(Icons.add,size: 50.0,),
              onPressed: () => setState(() {
                //functionality of adding
              }),
            ),
          ),
        ));
  }
}

