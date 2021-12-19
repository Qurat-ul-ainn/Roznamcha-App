import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class ExpenseTypeAddScreen extends StatelessWidget {
  final _expTypeController = TextEditingController();
  final _descriptionController = TextEditingController();
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
                      txt: "Add Expense Type",
                    ),
                    Container(
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
                  height: 20.0,
                ),
                SubTxt(
                  txt: "Name",
                ),
                TextFieldComponent(
                  txtHint: "Expence Type Name",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _expTypeController,
                ),
                SizedBox(
                  height: 15,
                ),
                SubTxt(
                  txt: "Description",
                ),
                TextFieldComponent(
                  txtHint: "write your Description notes here...",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _descriptionController,
                ),
                SizedBox(
                  height: 15,
                ),
                SubTxt(
                  txt: "Notes",
                ),
                TextFieldComponent(
                  txtHint: "write your Private notes here...",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _notesController,
                ),
                SizedBox(
                  height: 280,
                ),
                Stack(
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
                SizedBox(
                  height: 20.0,
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
                      btnClr: AppColors.gradientBtnClr
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
