import 'dart:math';
import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class JournalEntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15.0),
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
                        txt: "Journal Entry",
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
                      height: 42.0,
                      txtHint: "Debit Account",
                    ),
                    HintedTextField(
                      height: 44.0,
                      txtHint: "Credit Account",
                    ),

                  ],
                ),
              ),
              Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        //width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),),
                        child: Row(children: [
                          Container(
                            height: double.infinity,
                            width: 20.0,
                            color: Colors.cyan[100],
                            alignment: Alignment.center,
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'Total',

                                style: TextStyle(
                                   color: Colors.grey[700]
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SubTxt(
                            txt: "Received",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:180.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SubTxt(
                                  txt: "1,00,000",
                                ),
                                Container(
                                  margin: EdgeInsets.only(top:2.0),
                                  height: 1.0,
                                  width: 120.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:270),
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
                        padding: EdgeInsets.symmetric(horizontal:15.0),
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
                              child: CustomGradientButton(
                                btnTxt: "Login",
                                btnWidth: MediaQuery.of(context).size.width*1,
                                btnClr: AppColors.gradientBtnClr,
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
        )
      ),
    );
  }
}
