import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class ExpenseTypeEditScreen extends StatelessWidget {
  final _shipChargeController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _notesController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainTxt(
                  txt: "Edit Expense Type",
                ),
                SizedBox(
                  height: 20.0,
                ),
                SubTxt(
                  txt: "Name",
                ),
                TextFieldComponent(
                  txtHint: "Shipping Charges",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _shipChargeController,
                ),
                SizedBox(
                  height: 15,
                ),
                SubTxt(
                  txt: "Description",
                ),
                TextFieldComponent(
                  txtHint: "write your private notes here...",
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
                  height: 270,
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
                      btnTxt: "Update",
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
