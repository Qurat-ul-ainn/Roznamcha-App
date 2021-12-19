import 'dart:math';

import 'package:flutter/material.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class StockTransferScreen extends StatelessWidget {
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
                          txt: "Stock Transfer Activity",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 75.0),
                          child: SubTxt(
                            txt: "20-dec-2020",
                          ),
                        ),
                      ],
                    ),
                    HintedTextField(
                      height: 40.0,
                      txtHint: "From",
                    ),
                    HintedTextField(
                      height: 40.0,
                      txtHint: "To Location'",
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10.0),
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Container(
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
                          ListViewComponent(
                            price: 2563353,
                          ),
                          ListViewComponent(
                            price: 2563353,
                          ),
                          ListViewComponent(
                            price: 2563353,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomGradientButton(
                                btnTxt: "Add Items",
                                btnWidth: 150.0,
                                btnClr: LinearGradient(
                                  colors: <Color>[Colors.cyan[300], Colors.green[300]],
                                ) ,
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
                      padding: EdgeInsets.only(top: 40.0,left: 10,right: 10),
                      color: Colors.grey[200],
                      child: Column(
                        children: [
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
                                    btnClr: LinearGradient(
                                      colors: <Color>[Colors.cyan, Colors.green],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
