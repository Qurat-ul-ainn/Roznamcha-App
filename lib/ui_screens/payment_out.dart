import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class PaymentOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal:15.0,vertical: 10.0),
                child: Column(
                  children: [Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right:20.0,left: 10.0),
                        child: Container(
                          width: 16.0,
                          height: 18.0,
                          child: FloatingArrowButton(
                            btnFunction: (){
                              //function for back navigate screen
                            },
                          ),
                        ),
                      ),
                      MainTxt(
                        txt: "Payment-out",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:140.0),
                        child: SubTxt(
                          txt: "20-dec-2020",
                        ),
                      ),
                    ],
                  ),
                    HintedTextField(
                      height: 40.0,
                      txtHint: "Party'",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:9.0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "Party Balance:",
                          ),
                          SizedBox(width: 10.0,),
                          Text("123,456.00",style: TextStyle(color: Colors.orangeAccent),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[100],
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),),
                      child: Row(children: [
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
                                  fontSize: 12.0,color: Colors.grey[700]
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
                                  txt: "Received",
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
                                      margin: EdgeInsets.only(top:2.0),
                                      height: 3.0,
                                      width: 120.0,
                                      color: Colors.grey[400],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SubTxt(
                                  txt: "Discount",
                                ),
                                SizedBox(
                                  width: 160.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SubTxt(
                                      txt: "400",
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:2.0),
                                      height: 3.0,
                                      width: 120.0,
                                      color: Colors.grey[400],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],),

                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      alignment: Alignment.centerLeft,
                      child: SubTxt(
                        txt: "Payment Method",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin:EdgeInsets.all( 10.0),
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  gradient: LinearGradient( colors: <Color>[
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
                                margin:EdgeInsets.all( 10.0),
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
                                margin:EdgeInsets.all( 10.0),
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
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),),
                      child: Row(children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          height: double.infinity,
                          width: 20.0,
                          color: Colors.deepOrange[100],
                          alignment: Alignment.center,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Balance',
                              style: TextStyle(
                                 fontSize: 12.0, color: Colors.grey[700]
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
                                  txt: "Received",
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
                                      margin: EdgeInsets.only(top:2.0),
                                      height: 3.0,
                                      width: 120.0,
                                      color: Colors.grey[400],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SubTxt(
                                  txt: "Discount",
                                ),
                                SizedBox(
                                  width: 160.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SubTxt(
                                      txt: "400",
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:2.0),
                                      height: 3.0,
                                      width: 120.0,
                                      color: Colors.grey[400],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:80.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: HintedTextField(
                              txtHint: "Notes",
                              height:65.0,
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
                                  angle: 3 * pi / 8,
                                  child: Icon(Icons.link))
                          ),
                        ],
                      ),
                    ),


                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [

                          FloatingArrowButton(
                            btnFunction: (){
                              //function for back navigate screen
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: CustomButton(
                              btnClr: AppColors.kSimpleBtnClr,
                              btnTxt: "Getting Started",
                              btnWidth: double.infinity,
                              btnFunction: (){
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
