import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class ExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal:15.0,vertical: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right:20.0,left: 10.0),
                          child: Container(
                            width: 16.0,
                            height: 18.0,
                            child: FloatingArrowButton(
                              btnFunction: () {
//function for back navigate screen
                              },
                            ),
                          ),
                        ),
                        MainTxt(
                          txt: "Expense",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: SubTxt(
                            txt: "20-dec-2020",
                          ),
                        ),
                      ],
                    ),
                    HintedTextField(
                      height: 40.0,
                      txtHint: "Category'",
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.90,
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
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
                            width: 20.0,
                            color: Colors.deepOrange[100],
                            alignment: Alignment.center,
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'Total',
                                style: TextStyle(
                                     color: Colors.grey[500]),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          SubTxt(
                            txt: "Paid",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SubTxt(
                                  txt: "1,00,000",
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2.0),
                                  height: 1.0,
                                  width: 120.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 10.0),
                      child: SubTxt(
                        txt: "Payment Method",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10.0),
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Colors.yellow[800],
                                      Colors.orangeAccent[700],
                                    ],
// begin: const FractionalOffset(0.0, 0.0),
                                    end: const FractionalOffset(0.0, 1.0),
                                  ),
                                ),
                              ),
                              Text(
                                "Cash",
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10.0),
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                height: 60.0,
                                width: 60.0,
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
                                margin: EdgeInsets.all(10.0),
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                height: 60.0,
                                width: 60.0,
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

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 150),
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            FloatingArrowButton(
                              btnFunction: () {

                              },
                            ),

                            SizedBox(
                              width: 20.0,
                            ),

                            Expanded(
                              child: CustomButton(
                                btnClr: AppColors.kSimpleBtnClr,
                                btnTxt: "Save",

                                btnWidth: double.infinity,
                                btnFunction: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}


