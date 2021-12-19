import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class SaleInvoiceAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal:15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical:20.0,horizontal: 10.0),
                          child: Container(
                            width: 18.0,
                            height: 18.0,
                            child: FloatingArrowButton(
                              btnFunction: () {
                                //function for back navigate screen
                              },
                            ),
                          ),
                        ),
                        MainTxt(
                          txt: "Create Sale Bill",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 135.0),
                          child: SubTxt(
                            txt: "20-dec-2020",
                          ),
                        ),
                      ],
                    ),
                    HintedTextField(
                      height: 40.0,
                      txtHint: "Customer'",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "Party Balance:",
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "123,456.00",
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 30.0,
                    alignment:Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 26.0),
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.cyan[100],
                          Colors.greenAccent[100],
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                      ),
                    ),
                    child: Text("Billed Items", ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          ListViewComponentA (
                            price: 2563353,
                          ),
                          ListViewComponentA (
                            price: 2563353,
                          ),
                          ListViewComponentA (
                            price: 2563353,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomGradientButton(
                                btnTxt: "Add Items",
                                btnWidth: 150.0,
                                btnClr: AppColors.gradientBtnClr,
                              ),
                              Text("Rs. 4,32,000",style: TextStyle(
                                  color: Colors.green,fontSize: 18.0
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            width: MediaQuery.of(context).size.width,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  height: double.infinity,
                                  width: 22.0,
                                  color: Colors.cyan[100],
                                  alignment: Alignment.center,
                                  child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      'Tax & Discount',
                                      style: TextStyle(
fontSize: 10,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        SubTxt(
                                          txt: "Discount",
                                        ),
                                        SizedBox(
                                          width: 180.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SubTxt(
                                              txt: "5%",
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 2.0),
                                              height: 2.0,
                                              width: 25.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SubTxt(
                                              txt: "1,00,000",
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 2.0),
                                              height: 2.0,
                                              width: 50.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        SubTxt(
                                          txt: "Tax %",
                                        ),
                                        SizedBox(
                                          width: 260.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SubTxt(
                                              txt: "400",
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 2.0),
                                              height: 2.0,
                                              width: 30.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                            EdgeInsets.only(top: 20.0, left: 25.0,bottom: 10.0),
                            alignment: Alignment.centerLeft,
                            child: SubTxt(
                              txt: "Payment Method",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(

                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(8.0),
                                          height: 50.0,
                                          width: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            gradient: LinearGradient(
                                              colors: <Color>[
                                                Colors.green,
                                                Colors.cyan,
                                              ],
                                              // begin: const FractionalOffset(0.0, 0.0),
                                              end: const FractionalOffset(0.0, 1.0),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Cash",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(8.0),
                                          height: 50.0,
                                          width: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          "MCB",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(8.0),
                                          height: 50.0,
                                          width: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          "HBL",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 55.0,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:12.0),
                                      height: 80,
                                      width: 100,
                                      color: Colors.grey[350],
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(4.0),
                                            child: Text("Cash"),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: <Color>[
                                                  Colors.cyan[200],
                                                  Colors.green[300],
                                                ],
                                                begin: const FractionalOffset(0.0, 0.0),
                                              ),
                                            ),
                                            margin: EdgeInsets.symmetric(vertical: 8.0),
                                            child: Text(
                                              "Partial",
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(4.0),
                                            child: Text("Credit"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            width: MediaQuery.of(context).size.width,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: 22.0,
                                  color: Colors.cyan[100],
                                  alignment: Alignment.center,
                                  child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      'Total Amount',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        SubTxt(
                                          txt: "Grand Total",
                                        ),
                                        SizedBox(
                                          width: 130.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SubTxt(
                                              txt: "1,00,000",
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 2.0),
                                              height: 2.0,
                                              width: 120.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        SubTxt(
                                          txt: "Received",
                                        ),
                                        SizedBox(
                                          width: 145.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SubTxt(
                                              txt: "1,00,000",
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 2.0),
                                              height: 2.0,
                                              width: 120.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        SubTxt(
                                          txt: "Due",
                                        ),
                                        SizedBox(
                                          width: 180.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SubTxt(
                                              txt: "3,10,400",
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 2.0),
                                              height: 2.0,
                                              width: 120.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            width: MediaQuery.of(context).size.width,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  height: double.infinity,
                                  width: 22.0,
                                  color: Colors.cyan[100],
                                  alignment: Alignment.center,
                                  child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      'Balance',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        SubTxt(
                                          txt: "Before",
                                        ),
                                        SizedBox(
                                          width: 160.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SubTxt(
                                              txt: "1,00,000",
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 2.0),
                                              height: 2.0,
                                              width: 120.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        SubTxt(
                                          txt: "After",
                                        ),
                                        SizedBox(
                                          width: 170.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SubTxt(
                                              txt: "400",
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 2.0),
                                              height: 2.0,
                                              width: 120.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: HintedTextField(
                                  txtHint: "Notes",
                                  height: 65.0,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(10.0),
                                  //  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  child: Transform.rotate(
                                      angle: 3 * pi / 8, child: Icon(Icons.link))),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              children: [
                                FloatingArrowButton(
                                  btnFunction: () {
                                    //function for back navigate screen
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: CustomGradientButton(
                                    btnTxt: "Save",
                                    btnWidth: MediaQuery.of(context).size.width * 1,
                                    btnClr: AppColors.gradientBtnClr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


//ListViewComponent for create sale bill A screen
class ListViewComponentA extends StatelessWidget {
  final int price;

  final btnFunction;

  const ListViewComponentA(
      {Key key,  this.price,  this.btnFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      width: double.infinity,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item Name',
              style: TextStyle(
                  fontSize: 16,
              ),
            ),
            SizedBox(height:5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2BB Can X Rs 500',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
                Text(
                  ' $price',
                  style: TextStyle(
                      fontSize: 15,
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
