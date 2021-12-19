import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class ServicesAddScreen extends StatelessWidget {
  final _notesController = TextEditingController();
  final _tagsController = TextEditingController();
  final _categoryController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _serviceNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTxt(
                      txt: "Add Service",
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
                  height: 30.0,
                ),
                SubTxt(
                  txt: "Service Name",
                ),
                TextFieldComponent(
                  txtHint: "Name",
                  passHide: false,
                  width: MediaQuery.of(context).size.width * 1,
                  txtController: _serviceNameController,

                ),
                SizedBox(height: 10.0,),
                Container(
                  width: double.infinity,
                  height: 170.0,
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

                Padding(
                  padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "Retail Price",
                          ),
                          Container(
                            padding: EdgeInsets.all(15.0),
                            margin: EdgeInsets.symmetric(vertical:10.0),
                            width: MediaQuery.of(context).size.width*0.40,
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: Colors.grey)),
                            child: Text("1,234.00",textAlign: TextAlign.start,),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "Wholesale Price",
                          ),
                          Container(
                            padding: EdgeInsets.all(15.0),
                            margin: EdgeInsets.symmetric(vertical:10.0),
                            width: MediaQuery.of(context).size.width*0.40,
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: Colors.grey)),
                            child: Text("1034.00",textAlign: TextAlign.start,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SubTxt(
                  txt: "Category",
                ),
                TextFieldComponent(
                  txtHint: "US, New York, Wholesale",
                  passHide: false,
                  width: MediaQuery.of(context).size.width*1,
                  txtController: _categoryController,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SubTxt(
                  txt: "Tags",
                ),
                TextFieldComponent(
                  txtHint: "US, New York, Wholesale",
                  passHide: false,
                  width: MediaQuery.of(context).size.width*1,
                  txtController: _tagsController,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SubTxt(
                  txt: "Description",
                ),
                TextFieldComponent(
                  txtHint: "write service description for webstore here...",
                  passHide: false,
                  width: MediaQuery.of(context).size.width*1,
                  txtController: _descriptionController,
                ),
                SizedBox(
                  height: 20.0,
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
                Padding(
                  padding: EdgeInsets.only(top:20.0,),
                  child:  Stack(
                    children: [Container(
                      width: MediaQuery.of(context).size.width*1,
                      height: 2.0,
                      color: Colors.grey[400],
                    ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left:180.0),
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