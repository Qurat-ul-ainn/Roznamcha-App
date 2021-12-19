import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'package:trade/constClass/heights.dart';

//Custom button for navigation
class CustomButton extends StatelessWidget {
  final btnTxt;
  final btnClr;
  final btnFunction;
  final btnWidth;

  const CustomButton(
      {Key key, this.btnTxt, this.btnClr, this.btnFunction, this.btnWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 55,
      width: btnWidth,
      child: RaisedButton(
        color: btnClr,
        onPressed: btnFunction,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(
            28.0,
          ),
        ),
        child: Text(
          btnTxt,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//Custom Clickable text GestureDetector class
class CustomGestureText extends StatelessWidget {
  final onTapFunction;
  final txt;

  const CustomGestureText({Key key, this.onTapFunction, this.txt, })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(

        margin: EdgeInsets.all(19.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 2.0,
          color: Color(0xff37bea9),
        ))),
        child: Text(
          txt,
          style: TextStyle(
            color: Color(0xff37bea9),
            fontSize: 16,
            letterSpacing: 0,
            fontFamily: 'Lato',
          ),
        ),
      ),
    );
  }
}

//Custom Clickable text GestureDetector class
class ColoredGestureText extends StatelessWidget {
  final onTapFunction;
  final txt;
  final align;
  const ColoredGestureText({Key key, this.onTapFunction, this.txt, this.align})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 1.0,
          color: Colors.red,
        ))),
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

//Gradient Button Component
class CustomGradientButton extends StatelessWidget {
  final btnTxt;
  final btnClr;
  final btnFunction;
  final btnWidth;
  const CustomGradientButton(
      {Key key, this.btnTxt, this.btnClr, this.btnFunction, this.btnWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      child: Container(
        width: btnWidth,
        height: 55,
        margin: EdgeInsets.symmetric(vertical:20.0),
        child: Center(
          child: Text(btnTxt,
            style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
        decoration: BoxDecoration(
            gradient: btnClr,
            borderRadius: BorderRadius.circular(50)
        ),
      ),
      onTap: btnFunction,
    );

  }
}

// widget for main text
class MainTxt extends StatelessWidget {
  final txt;
  const MainTxt({
    Key key,
    this.txt,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 18,

      ),
    );
  }
}

// widget for sub text
class SubTxt extends StatelessWidget {
  final txt;
  const SubTxt({
    Key key,
    this.txt,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        color: Color(0xff9d9d9d),
        fontSize: 12,
        fontStyle:FontStyle.normal ,
        letterSpacing: 0,
      ),
    );
  }
}


// form widget
class TextFieldForm extends StatelessWidget {
  final fieldLabel;
  final textHint;
  final txtController;
  final validatorName;
  final keyboardType;
  final bool passHide;
  final onFocus;
  final icon;

  const TextFieldForm({Key key,this.icon, this.onFocus,this.fieldLabel, this.textHint, this.txtController, this.validatorName, this.keyboardType, this.passHide}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubTxt(
          txt: fieldLabel,
        ),
        TextFieldComponent(
          txtHint: textHint,
          fieldValidator: validatorName,
          passHide: passHide,
          width: MediaQuery.of(context).size.width * 1,
          txtController: txtController,
          keyboardType: keyboardType,
          icon: icon,

        ),
        SizedBox(
          height: AppWidgetHeight.kHeight*2,
        ),
      ],
    );
  }


}




// text field
FocusNode myFocusNode = new FocusNode();

class TextFieldComponent extends StatelessWidget {
  final bool passHide;
  final String txtHint;
  final txtController;
  final width;
  final icon;
  final fieldValidator;
  final keyboardType;
 // final myFocusNode;

  const TextFieldComponent(
      {Key key,
      this.passHide,
      this.txtHint,
      this.txtController,
      this.width,
      this.icon,
      this.fieldValidator,
      this.keyboardType,
       // this.myFocusNode
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
      ),

      height: 50,
      width: width,
      child:new TextFormField(
        keyboardType: keyboardType,
        validator: fieldValidator,
        controller: txtController,
        obscureText: passHide,
        decoration:InputDecoration(
          suffixIcon: icon,
            labelText: txtHint,
            fillColor: Colors.white,
            labelStyle: TextStyle(
                color: AppColors.kFieldBoardColor,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppWidgetHeight.kHeight/2),
              borderSide: BorderSide(
                color: AppColors.kActiveFieldBoarderClr,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppWidgetHeight.kHeight/2),
              borderSide: BorderSide(
                color: AppColors.kFieldBoardColor,
                width: 1.0,
              ),
            ),
          ),
      ),
    );
  }
}

//flat button with back arrow
class FloatingArrowButton extends StatelessWidget {
  final btnFunction;

  const FloatingArrowButton({Key key, this.btnFunction}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.grey[300],
      onPressed: btnFunction,
      child: new Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 15.0,
      ),
    );
  }
}

//BorderedTextText Field using stack

class HintedTextField extends StatelessWidget {
  final FocusNode myFocusNode = new FocusNode();
  final String txtHint;
  final height;

  HintedTextField({
    Key key,
    this.txtHint,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Container(
        height: height,
        margin: EdgeInsets.symmetric(vertical:10,horizontal: 8.0),
        child: TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              ),
              border: OutlineInputBorder(),
              fillColor: Colors.grey,
              labelText: txtHint,
              labelStyle: TextStyle(
                color: myFocusNode.hasFocus ? Colors.blue : Colors.grey,
              )
              // hintStyle: TextStyle( color: Colors.grey),
              ),
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
//card
class CardComponent extends StatelessWidget {
  final name;
  final type;
  final balance;
  final debitCredit;
  final blnceClr;
  final number;
  final creditClr;

  const CardComponent({
    Key key,
    this.name,
    this.type,
    this.balance,
    this.debitCredit,
    this.blnceClr,
    this.creditClr,
    this.number
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: MediaQuery.of(context).size.height * 0.40,
          width: MediaQuery.of(context).size.height * 0.23,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[100]),
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.greenAccent,
              ],
              begin: const FractionalOffset(0.0, 0.0),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 180,
                left: 0,
                bottom: 00,

                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  width: 140.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        balance,
                        style: TextStyle(color: blnceClr, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        debitCredit,
                        style: TextStyle(color: creditClr, fontSize: 8.0),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 00,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.height * 0.23,
                  height: 90.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(
                            type,
                            style: TextStyle(color: Colors.grey),
                          ),

                          SizedBox(height: 10.0,
                          ),
                          Text(number,style: TextStyle(color:Colors.cyan,fontSize: 15)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Icon(Icons.tune,),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


//ListViewComponent for create sale bill B screen
class ListViewComponent extends StatelessWidget {
  final int price;

  final btnFunction;

  const ListViewComponent(
      {Key key,  this.price,  this.btnFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      width: double.infinity,
      color: Colors.grey[300],
      child: Row(
        children: [

          Container(
            height: 140,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              gradient: LinearGradient(
                colors: [
                  Colors.cyan,
                  Colors.greenAccent,
                ],
                begin: const FractionalOffset(0.0, 0.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Name',
                  style: TextStyle(
                      fontSize: 25,

                  ),
                ),
                Text(
                  'Rs. $price',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      width: 25.0,
                      height: 25.0,
                      margin: EdgeInsets.all(10.0),
                      child: FloatingActionButton(
                        backgroundColor:Colors.cyan[50],
                       onPressed: btnFunction,
                        child: Text("-",
                          textAlign: TextAlign.center,
                            style: TextStyle(
                            fontSize: 20,
                            color: Colors.cyan
                        ),),
                      ),
                    ),
                    Text("1",
                      style: TextStyle(
                          fontSize: 20,
                      ),),
                    Container(
                      width: 25.0,
                      height: 25.0,
                      margin: EdgeInsets.all(10.0),
                      child: FloatingActionButton(
                        backgroundColor:Colors.cyan[50],
                        onPressed: btnFunction,
                        child: Text("+",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.cyan
                          ),),
                      ),
                    ),
                   Column(
                     children: [
                       Text("Unit",
                         style: TextStyle(
                           color: Colors.grey,
                           fontSize: 20,
                         ),),
                       Text("KG",
                         style: TextStyle(
                           fontSize: 20,
                         ),),
                     ],
                   ),
                    SizedBox(
                      width: 50.0,
                    ),

                  ],
                ),


              ],

            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            children: [
              Container(

                margin: EdgeInsets.only(bottom: 70.0,),
                height: 30,
                width: 30,
                child: FloatingActionButton(
                  backgroundColor: Colors.grey[400],
                  onPressed: () {
                    //on press function
                  },
                  child: Icon(Icons.clear,color: Colors.white,
                  ),
                ),
              ),
              Column(

                children: [
                  Text("Rate",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),),
                  Text("120",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


