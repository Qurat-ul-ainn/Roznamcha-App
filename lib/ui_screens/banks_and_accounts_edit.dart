import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class BankAndAccountEdit extends StatelessWidget {
  final _bankController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
                MainTxt(
                  txt: "Add New Bank or Account",
                ),
                SizedBox(
                  height: 25.0,
                ),
                SubTxt(
                  txt: "Bank Name or Account Name",
                ),
                TextFieldComponent(
                  txtHint: "MCB",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _bankController,

                ),
                Container(

                  width: double.infinity,
                  height: 150.0,
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                          //add functionality
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                          size: 50,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text("Capture/Upload",style: TextStyle( color: Colors.grey[400],fontSize: 20),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    new Radio(
                    ),
                    new Text(
                      'Bank',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(


                    ),
                    new Text(
                      'Cash',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),

                  ],
                ),
                SubTxt(
                  txt: "Current Balance",
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical:10.0),
                  width: MediaQuery.of(context).size.width*0.40,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Colors.grey)),
                  child: Text("123,321",textAlign: TextAlign.start,),
                ),
                Row(
                  children: [
                    new Radio(

                    ),
                    new Text(
                      'Bank',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(


                    ),
                    new Text(
                      'Cash',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                SubTxt(
                  txt: "Notes",
                ),
                TextFieldComponent(
                  txtHint: "write your private notes here...",
                  passHide: false,
                  width: MediaQuery.of(context).size.width*1,
                  txtController: _notesController,
                ),
                Stack(
                  children: [Container(
margin: EdgeInsets.only(top: 15.0),
                    width: MediaQuery.of(context).size.width*1,
                    height: 2.0,
                    color: Colors.grey[300],
                  ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 180.0,top: 15.0),
                      width: MediaQuery.of(context).size.width*0.25,
                      height: 2.0,
                      color: Colors.cyan,
                    )],
                ),

                Row(
                  children: [
                    FloatingArrowButton(
                      btnFunction: (){
                        //Function for navigate back on which screen
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    CustomGradientButton(
                      btnTxt: "Upload",
                      btnWidth: MediaQuery.of(context).size.width * 0.70,
                      btnClr: AppColors.gradientBtnClr,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
