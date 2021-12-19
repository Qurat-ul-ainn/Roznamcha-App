import 'package:flutter/material.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class TransactionDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
        body:Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTxt(
                    txt: "Sales Report",
                  ),
                  Container(

                  height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300],
                    ),
                    child: FlatButton(

                      onPressed: () {
                        //on press function
                      },
                      child: Text(
                        "Filter",
                        style: TextStyle(color: Colors.black,fontSize: 12.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                children: [
                  Container(
                    width: 125.0,
                    height: 120,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[350])
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text( "Total Sale",style: TextStyle(
                            color: Colors.grey,fontSize: 16.0
                        )),
                        SizedBox(height: 2.0,),
                        Text("30",style: TextStyle(
                          color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 18.0
                        ),)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 125.0,
                      height: 120,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide( color: Colors.grey[350]),
                            bottom: BorderSide( color:  Colors.grey[350]),
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( "T.Received",style: TextStyle(
                              color: Colors.grey,fontSize: 16.0
                          )),
                          SizedBox(height: 2.0,),
                          Text("30",style: TextStyle(
                              color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 18.0
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 125.0,
                    height: 120,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[350])
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text( "T.Profit",style: TextStyle(
                            color: Colors.grey,fontSize: 16.0
                        )),
                        SizedBox(height: 2.0,),
                        Text("30",style: TextStyle(
                            color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 18.0
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),
              ListViewComponent(
                price: "144,000",
              ),


            ],
          ),
        ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniStartDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left:12.0,bottom: 20.0),
            child: FloatingActionButton(
                backgroundColor: Colors.grey[400],
                hoverElevation: 10,
                splashColor: Colors.grey,
                tooltip: 'Search',
                elevation: 4,
                child: Icon(
                  Icons.arrow_back,color: Colors.black,
                  size: 30.0,
                ),
                onPressed: () {
                  //functionality of adding
                }),
          ),),);
  }
}


//ListViewComponent for create sale bill A screen
class ListViewComponent extends StatelessWidget {
  final  price;


  const ListViewComponent({Key key, this.price, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 8.0),

      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Name',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Invoice ID-Detail',
                  style: TextStyle(color: Colors.grey,fontSize: 13.0),
                ),
                Text(
                  ' $price',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
