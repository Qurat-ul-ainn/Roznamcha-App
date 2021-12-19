import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class EmployeeAccessNewScreen extends StatelessWidget {
  final _empNameController = TextEditingController();
  final _passController = TextEditingController();
  final _notesController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTxt(
                      txt: "Add Employee Access",
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      height: 20,
                      width: 20,
                      child: FloatingActionButton(
                        backgroundColor: Colors.grey[300],
                        onPressed: () {
                          //on press function
                        },
                        child: Text(
                          "?",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SubTxt(
                  txt: "Employee",
                ),
                TextFieldComponent(
                  txtHint: "Ali Khan",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _empNameController,
                ),
                SizedBox(
                  height: 10.0,
                ),
                SubTxt(
                  txt: "Password",
                ),
                TextFieldComponent(
                  txtHint: "password",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _passController,
                ),
                SizedBox(
                  height:10,
                ),
                Row(
                  children: [
                    new Radio(
                      activeColor: Color(0xffFFBD11),
                    ),
                    new Text(
                      'Module name',

                    ),
                    SizedBox(width: 50.0,),
                    new Radio(


                    ),
                    new Text(
                      'Module name',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    new Radio(
                      activeColor: Color(0xffFFBD11),
                    ),
                    new Text(
                      'Module Name',

                    ),
                    SizedBox(width: 50.0,),
                    new Radio(
                    ),
                    new Text(
                      'Module name',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    new Radio(
                      activeColor: Color(0xffFFBD11),
                    ),
                    new Text(
                      'Module name',

                    ),
                    SizedBox(width: 50.0,),
                    new Radio(
                    ),
                    new Text(
                      'Module name',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    new Radio(
                      activeColor: Color(0xffFFBD11),
                    ),
                    new Text(
                      'Module Name',

                    ),
                    SizedBox(width: 50.0,),
                    new Radio(
                    ),
                    new Text(
                      'Module name',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SubTxt(
                  txt: "Notes",
                ),
                TextFieldComponent(
                  txtHint: "write your private notes here...",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _notesController,
                ),

                Padding(
                    padding: const EdgeInsets.only(top:70.0, bottom: 10.0),
                  child: Stack(
                    children: [Container(
                      width: MediaQuery.of(context).size.width*1,
                      height: 2.0,
                      color: Colors.grey[300],
                    ),
                      Container(
                        margin: EdgeInsets.only(left: 180.0),
                        width: MediaQuery.of(context).size.width*0.25,
                        height: 2.0,
                        color: Colors.cyan,
                      )],
                  ),
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
                      btnTxt: "Save",
                      btnWidth: MediaQuery.of(context).size.width * 0.70,
                      btnClr:AppColors.gradientBtnClr,
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
