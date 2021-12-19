import 'package:flutter/material.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/constClass/ui_components_constants.dart';

class ShippingInfoScreen extends StatelessWidget {

  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _countryController = TextEditingController();
  final _stateController = TextEditingController();
  final _cityController = TextEditingController();
  final _zipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainTxt(
                  txt: "Add Shipping Information",
                ),
                SizedBox(
                  height: 18.0,
                ),
                SubTxt(
                  txt: "Your name",
                ),
                TextFieldComponent(
                  txtHint: "Full name",
                  passHide: false,
                  width: MediaQuery.of(context).size.width*1,
                  txtController: _nameController,
                ),

                SizedBox(
                  height: 12.0,
                ),
                SubTxt(
                  txt: "Address",
                ),
                TextFieldComponent(
                  txtHint: "Address line ",
                  passHide: false,
                  width: MediaQuery.of(context).size.width*1,
                  txtController: _addressController,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "Country",
                          ),
                          TextFieldComponent(
                            txtHint: "Indonesia",
                            passHide: false,
                            width: MediaQuery.of(context).size.width * 0.5,
                            txtController: _countryController,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "State",
                          ),
                          TextFieldComponent(
                            txtHint: "South Sulawesi",
                            passHide: false,
                            width: MediaQuery.of(context).size.width * 0.5,
                            txtController: _stateController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "City",
                          ),
                          TextFieldComponent(
                            txtHint: "Makassar",
                            passHide: false,
                            width: MediaQuery.of(context).size.width * 0.5,
                            txtController: _cityController,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "Zip",
                          ),
                          TextFieldComponent(
                            txtHint: "902441",
                            passHide: false,
                            width: MediaQuery.of(context).size.width * 0.5,
                            txtController: _zipController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "Delivery",
                          ),
                          SimpleTxt(
                            text: "RP 65.000",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top:25.0),
                        child: ColoredTxt(
                          text: "RP 55.000",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                SimpleTxt(
                  text: "RP 55.000",
                  width: MediaQuery.of(context).size.width * 0.42,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: SubTxt(
                    txt: "To pay",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0
                      ),),
                    Text("RP 538.000",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery cost",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0
                        ),),
                      Text("RP 538.000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0
                        ),),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0
                        ),),
                      Text("RP 593.000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          color: Colors.cyan
                        ),),
                    ],
                  ),
                ),
                Stack(
                  children: [Container(
                    width: MediaQuery.of(context).size.width*1,
                    height: 2.0,
                    color: Colors.grey,
                  ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Container(
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
                      btnTxt: "Register",
                      btnWidth: MediaQuery.of(context).size.width * 0.70,
                      btnClr: LinearGradient(
                        colors: <Color>[Colors.cyan[400], Colors.green[400]],
                      ),
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


//colored text field

class ColoredTxt extends StatelessWidget {
  final text;
  const ColoredTxt({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:5.0,),
      padding: EdgeInsets.all(10.0),
      height: 48,
      width:  MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Colors.cyan)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 20,
            width: 50,
            color: Colors.green,
          ),
          Text(text,style: TextStyle(color: Colors.grey[700]),),
        ],
      ),
    );
  }
}



//colored text field
class SimpleTxt extends StatelessWidget {
  final text;
  final width;
  const SimpleTxt({Key key, this.text,this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:5.0,),
      padding: EdgeInsets.all(10.0),
      height: 48,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 20,
            width: 50,
            color: Colors.green,
          ),
          Text(text,style: TextStyle(color: Colors.grey[700]),),
        ],
      ),
    );
  }
}