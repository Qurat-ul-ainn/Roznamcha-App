import 'dart:io';

import 'package:flutter/material.dart';
import 'package:trade/ui_screens/login_screens/login_screen.dart';
import 'package:trade/ui_screens/onboarding_screen/onboarding_languages.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';



class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        return exit(0);
      },
      child: Scaffold(
        body: Container(
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/oval-red.png',
                      fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: -15,
                    top: 25,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/images/oval-blue.png',
                        fit: BoxFit.cover,),
                    ),
                  ),
                  Positioned(
                    top: 00,
                    right: 00,
                    child: Container(
                      alignment: Alignment.center,
                      height: 400,
                      child:  Image.asset('assets/images/oval-orange.png',
                        fit: BoxFit.cover,),
                    ),
                  ),
                  Positioned(
                    top: 100,
                   right: 00,
                    left: 30,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 380,
                          height: 380,
                          child:  Image.asset('assets/images/oval-green.png',
                            fit: BoxFit.cover,height:350,),
                        ),
                        Positioned(
                          top: 150,
                          left: 50,
                          child:Column(
                            children: [
                              Text("Biz Roznamcha",
                                style:TextStyle(
                                    color:  Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "The simpler way to manage your\nshop accounts and stock.",
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                    color:  Colors.white,
                                    fontSize: 20.0
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    CustomButton(
                      btnClr: Colors.deepOrange[300],
                      btnTxt: "Getting Started",
                      btnWidth: 200.0,
                      btnFunction: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OnBoardingLanguages()),
                        );
                      },
                    ),
                    SizedBox(
                      height:  50,
                    ),
                    Text(
                      "Already have account?",
                    ),

                    CustomGestureText(
                      onTapFunction: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      txt: "Login here",

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
