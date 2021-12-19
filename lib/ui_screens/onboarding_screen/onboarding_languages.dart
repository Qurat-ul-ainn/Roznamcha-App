import 'package:flutter/material.dart';
import 'package:trade/ui_screens/onboarding_screen/starting_screen.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';
import 'package:easy_localization/easy_localization.dart';

import 'onBoradScreen.dart';

class OnBoardingLanguages extends StatefulWidget {
  @override
  _OnBoardingLanguagesState createState() => _OnBoardingLanguagesState();
}

class _OnBoardingLanguagesState extends State<OnBoardingLanguages> {
  List languageCode=["en","ur","hi","fr","ar"];

  @override
  Widget build(BuildContext context) {
   // EasyLocalization.of(context).setLocale(languageCode[4]);

    return WillPopScope(
      onWillPop: (){
        return  Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context)=> StartingScreen()));//Methods.onPageChanged(context,StartingScreen());
      },
      child: Scaffold(
        body:Center(
          child: ListView(
            padding:const EdgeInsets.all(10.0),
            shrinkWrap: true,
            physics:ClampingScrollPhysics(),
            children: [
              CustomGradientButton(
                btnTxt: "English",
                btnClr: LinearGradient(
                  colors: [
                  Color(0xffffdea7),
              Color(0xffea6362) ],
            stops: [
              0,
              1
            ],
            begin: Alignment(0.99, -0.16),
            end: Alignment(-0.99, 0.16),
                ),
                btnWidth: double.infinity,
                btnFunction: (){
                  print("helo English");
                  setState(() {
                    EasyLocalization.of(context).locale =
                        Locale(languageCode[0],);
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnBoardScreen()),//OnBoardScreen()),
                  );
                },

              ),
              CustomGradientButton(

                btnTxt: "اردو",
                btnWidth: double.infinity,
                btnFunction: (){
                  print("helo Urdu");
                  setState(() {
                    EasyLocalization.of(context).locale =
                        Locale(languageCode[1],);
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnBoardScreen()),
                  );
                },
                btnClr:LinearGradient(
                  colors: [
                    Color(0xff23bcba),
                    Color(0xff45e994) ],
                  stops: [
                    0,
                    1
                  ],
                  begin: Alignment(-0.99, 0.14),
                  end: Alignment(0.99, -0.14),
                ) ,
              ),
              CustomGradientButton(
                btnTxt: "हिन्दी",
                btnWidth: double.infinity,
                btnFunction: (){
                  print("helo Hindi");
                  setState(() {
                    EasyLocalization.of(context).locale =
                        Locale(languageCode[2],);
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnBoardScreen()),
                  );
                },
                btnClr:LinearGradient(
                  colors: [
                    Color(0xd83fa3c0),
                    Color(0xff3fa3c0) ],
                  stops: [
                    0,
                    1
                  ],
                  begin: Alignment(0.99, -0.16),
                  end: Alignment(-0.99, 0.16),
                ) ,
              ),
              CustomGradientButton(
                btnTxt: "française",
                btnWidth: double.infinity,
                btnFunction: (){
                  print("helo French");
                  setState(() {
                    EasyLocalization.of(context).locale =
                        Locale(languageCode[3],);
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnBoardScreen()),
                  );
                },
                btnClr:LinearGradient(
                  colors: [
                    Color(0xd8ec7475),
                    Color(0xffec7475) ],
                  stops: [
                    0,
                    1
                  ],
                  begin: Alignment(0.99, -0.16),
                  end: Alignment(-0.99, 0.16),
                ) ,
              ),
              CustomGradientButton(
                btnTxt:  "عربي",
                btnWidth: double.infinity,
                btnFunction: (){
                  print("helo Arabic");
                  setState(() {
                    EasyLocalization.of(context).locale =
                        Locale(languageCode[4],);
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnBoardScreen()),
                  );
                },
                btnClr:LinearGradient(
                  colors: [
                    Color(0xff23bcba),
                    Color(0xff45e994) ],
                  stops: [
                    0,
                    1
                  ],
                  begin: Alignment(-0.99, 0.14),
                  end: Alignment(0.99, -0.14),
                ) ,
              ),

            ],
          ),
        ),
      ),
    );
  }
}


Widget buildText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      textStyle("${("title".tr().toString())}: ", Colors.blue),
    ],
  );
}

Widget textStyle(String text, Color color) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: 25),
  );
}

