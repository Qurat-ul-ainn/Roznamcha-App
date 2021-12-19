import 'dart:convert';
import 'package:html_unescape/html_unescape.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'package:trade/constClass/configration.dart';
import 'package:trade/ui_screens/onboarding_screen/onBoradScreen.dart';



class RestDropDownSelectedItem {
  final String queryType;
  final int id;

  const RestDropDownSelectedItem(this.id, this.queryType);
}


class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  String ctCode,selected;

  RestDropDownSelectedItem selectedItem;
  List<RestDropDownSelectedItem> restTypeItems = <RestDropDownSelectedItem>[
    const RestDropDownSelectedItem(0, '...Select one...'),
    const RestDropDownSelectedItem(1, 'Animal Health'),
    const RestDropDownSelectedItem(2, 'Appliance'),
    const RestDropDownSelectedItem(3, 'Automobile'),
    const RestDropDownSelectedItem(4, 'Chemicals'),
    const RestDropDownSelectedItem(5, 'Clothes'),
    const RestDropDownSelectedItem(6, 'Construction'),
    const RestDropDownSelectedItem(7, 'Cosmetics'),
    const RestDropDownSelectedItem(8, 'Electronics'),
    const RestDropDownSelectedItem(9, 'Food'),
    const RestDropDownSelectedItem(10, 'Garments'),
    const RestDropDownSelectedItem(11, 'Garments'),
    const RestDropDownSelectedItem(12, 'General Store'),
    const RestDropDownSelectedItem(13, 'Grocery'),
    const RestDropDownSelectedItem(14, 'Handicraft'),
    const RestDropDownSelectedItem(15, 'Hardware'),
    const RestDropDownSelectedItem(16, 'Health'),
    const RestDropDownSelectedItem(17, 'Interior'),
    const RestDropDownSelectedItem(18, 'IT'),
    const RestDropDownSelectedItem(19, 'Jewellery'),
    const RestDropDownSelectedItem(20, 'Medical'),
    const RestDropDownSelectedItem(21, 'Mobiles'),
    const RestDropDownSelectedItem(22, 'Paper'),
    const RestDropDownSelectedItem(23, 'Petroleum'),
    const RestDropDownSelectedItem(24, 'Shoes'),
    const RestDropDownSelectedItem(25, 'Skin Care'),
    const RestDropDownSelectedItem(26, 'Sports'),
    const RestDropDownSelectedItem(27, 'Stationery'),
    const RestDropDownSelectedItem(28, 'Textile'),
    const RestDropDownSelectedItem(29, 'Tyres'),
    const RestDropDownSelectedItem(30, 'Vegetable'),
    const RestDropDownSelectedItem(31, 'Pesticides'),
  ];

  var businameController = new TextEditingController();
  var  emailController = new TextEditingController();
  var mobileController = new TextEditingController();
  var passwordController = new TextEditingController();


  var data,msg;
  void _onLoading() {
    AlertDialog alertDialog = AlertDialog(
      content: new Row(
        children: <Widget>[
          new CircularProgressIndicator(),
          SizedBox(width: 30,),
          new Text("Registering.. Please Wait !"),
        ],
      ),
    );
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context)=> alertDialog,
    );
    new Future.delayed(new Duration(seconds: 3), () {
      Navigator.pop(context); //pop dialog
      userRegistration() ;
      msg  = data['msg'].toString();
      debugPrint('msg ${data['msg'].toString()}');
    });
  }
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK",
        style: TextStyle(fontSize: 15,),),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("${msg.toString()}",
        style: TextStyle(fontSize: 18,),),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  var unescape;
  removeAllHtmlTags(String content) {
    RegExp exp = RegExp(
        r"<[^>]*>",
        multiLine: true,
        caseSensitive: true
    );
    data = content.replaceAll(exp, '');
    unescape = HtmlUnescape();
  }

  Future userRegistration() async {

    // SERVER API URL
    var url = preUrl + 'do_register.php';

    // Store all data with Param Name.
    // Starting Web API Call.
    http.Response response = await http.post(url,
        headers: {'Content-Type' :'application/json',},
        //    body: json.encode(data)
        body: jsonEncode({
          'business_type':'retailer',
          'referby':'flutter',
          'business_name': businameController.text,
          'industry_type': selectedItem.queryType,
          'email': emailController.text,
          'country_code': '+'+selected,
          'mobile': mobileController.text,
          'password': passwordController.text
        })
    );
    data  = jsonDecode(response.body);
    // debugPrint('data response is $data');

    // If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      // if received response from web_service url.
      setState(() {
        debugPrint(data['msg'].toString());

        // debugPrint(data['reply_data'].toString());
        var encodeData = jsonEncode(data['reply_data']);
        // insertUser2DB(encodeData);
        //login page
        // Navigator...
      });
      return showAlertDialog(context);
    }else{
      // if web_service didn't respond.
     // print(response.statusCode);
      var errData = jsonEncode(response.body);
      debugPrint('unscusses ${errData.toString()}');
      showAlertDialog(context);
      // otherwise show an alert box
    }
  }


  bool _autoValidate = false;
  final registerKey = GlobalKey<FormState>();
  void _validateSupport() {
    if(registerKey.currentState.validate()){
      registerKey.currentState.save();
      _onLoading();
      debugPrint('register success');
      //  postQuery();
    }   else{
      setState(() {
        _autoValidate = true;
      });
    }
  }
  bool inVisible = true;
  void _togglePasswordView() {
    setState(() {
      inVisible = !inVisible;
    });
  }
  @override
  void initState() {
    super.initState();
    selected ="1";
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        return Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context)=>OnBoardScreen()));
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register".toUpperCase(),
            style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.grey[50],
          elevation: 0.0,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              registrationForm()
            ],
          ),
        ),
      ),
    );
  }

  Widget registrationForm() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: registerKey,
        autovalidate: true,
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //name
                  RichText(
                    text: TextSpan(
                      text: 'Business Name',
                      style: TextStyle(
                          color: Colors.black,fontFamily: 'signika',fontSize: 2.0,fontWeight: FontWeight.bold),
                      /* children: [
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 2.0))
                          ]*/
                    ),
                    textScaleFactor: 8.0,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    autovalidate: false,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    validator: (String value){
                      if(value.length == 0)
                      {
                        return "Business Name is required !";
                      }else {
                        return null;
                      }
                    },
                    controller:businameController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.none,
                    decoration: InputDecoration(
                        hintText: 'your shop name here',
                        hintStyle: TextStyle(color: Colors.grey,fontFamily: 'signika',),
                        fillColor: Colors.white,
                        filled: true,
                        // errorStyle: TextStyle(color: Colors.red),
                        /*suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: (){
                              this.setState(() {
                                businameController.clear();
                              });
                            },
                          ),
                          */
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(05.0),
                            borderSide: BorderSide(
                              //width: 0.5,
                                color: Colors.grey,style: BorderStyle.none
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                      text: 'Industry',
                      style: TextStyle(
                          color: Colors.black,fontFamily: 'signika',fontSize: 2.0,fontWeight: FontWeight.bold),
                      /*children: [
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 2.0))
                          ]*/
                    ),
                    textScaleFactor: 8.0,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10,),
                  DropdownButtonFormField<RestDropDownSelectedItem>(
                    iconSize: 30,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15.0),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(05.0),
                            borderSide: BorderSide(
                                width: 0.5,
                                color: Colors.grey,style: BorderStyle.none
                            )
                        )
                    ),
                    value: selectedItem,
                    hint: Text('-- Select one --'),
                    onChanged: (RestDropDownSelectedItem newValue) {
                      setState(() {
                        selectedItem = newValue;
                        print('selected item ${selectedItem.queryType}');
                      });
                    },
                    validator: (value) => value == null ? 'Field required' : null,
                    items: restTypeItems.map((RestDropDownSelectedItem item){
                      return new DropdownMenuItem<RestDropDownSelectedItem>(
                        value: item,
                        child: new Text(item.queryType),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10,),
                  //email
                  RichText(
                    text: TextSpan(
                      text: 'Email Address',
                      style: TextStyle(
                          color: Colors.black,fontFamily: 'signika',fontSize: 2.0,fontWeight: FontWeight.bold),
                      /*children: [
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 2.0))
                          ]*/
                    ),
                    textScaleFactor: 8.0,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    autovalidate: false,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    validator: (String value){
                      if(value.length == 0)
                      {
                        return " Email is required !";
                      }else {
                        return null;
                      }
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.none,
                    decoration: InputDecoration(
                        hintText: 'yourname@example.com',
                        hintStyle: TextStyle(color: Colors.grey,fontFamily: 'signika',),
                        fillColor: Colors.white,
                        filled: true,
                        /* suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: (){
                              this.setState(() {
                                emailController.clear();
                              });
                            },
                          ),*/
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(05.0),
                            borderSide: BorderSide(
                                color: Colors.grey,style: BorderStyle.none
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Code',
                                style: TextStyle(
                                    color: Colors.black,fontFamily: 'signika',fontSize: 2.0,fontWeight: FontWeight.bold),
                                /*children: [
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 2.0))
                          ]*/
                              ),
                              textScaleFactor: 8.0,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 10.0,
                                ),
                                padding: EdgeInsets.only(left: 2.0),
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(color: Colors.grey)),
                                child: Center(child: countryCode())//CodeDropdown() //CodeDropdown(),
                            ),
                            //countryCode(),
                          ],
                        ),
                      ),
                      SizedBox(width: 05,),
                      Expanded(
                          flex: 7,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //mobile
                              RichText(
                                text: TextSpan(
                                  text: 'Mobile Number',
                                  style: TextStyle(
                                      color: Colors.black,fontFamily: 'signika',fontSize: 2.0,fontWeight: FontWeight.bold),
                                  /*children: [
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 2.0))
                          ]*/
                                ),
                                textScaleFactor: 8.0,
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                autovalidate: false,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                validator: (String value){
                                  if(value.length == 0)
                                  {
                                    return " Mobile is required !";
                                  }/* else if (value.length !=10){
                          return 'Mobile number accept only 10 digit long!';
                        }*/else {
                                    return null;
                                  }
                                },
                                controller: mobileController,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.none,
                                decoration: InputDecoration(
                                    hintText: '3001234567',
                                    hintStyle: TextStyle(color: Colors.grey,fontFamily: 'signika',),
                                    fillColor: Colors.white,
                                    filled: true,
                                    // errorStyle: TextStyle(color: Colors.red),
                                    /* suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: (){
                              this.setState(() {
                                mobileController.clear();
                              });
                            },
                          ),*/
                                    contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(05.0),
                                        borderSide: BorderSide(
                                          //width: 0.5,
                                            color: Colors.grey,style: BorderStyle.none
                                        )
                                    )
                                ),
                              ),
                            ],
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  //password
                  RichText(
                    text: TextSpan(
                      text: 'Password',
                      style: TextStyle(
                          color: Colors.black,fontFamily: 'signika',fontSize: 2.0,fontWeight: FontWeight.bold),
                      /* children: [
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 2.0))
                          ]*/
                    ),
                    textScaleFactor: 8.0,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    autovalidate: false,
                    obscureText: inVisible,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    validator: (String value){
                      if(value.length == 0)
                      {
                        return "Password is required !";
                      }else {
                        return null;
                      }
                    },
                    controller:passwordController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.none,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey,fontFamily: 'signika',),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon:IconButton(
                          icon: Icon(inVisible == true ? Icons.visibility_off :Icons.visibility,color: Colors.grey,size: 20,),
                          onPressed: _togglePasswordView,
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(05.0),
                            borderSide: BorderSide(
                              //width: 0.5,
                                color: Colors.grey,style: BorderStyle.none
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  // register button
                  InkWell(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topLeft,
                            colors: [AppColors.kActiveFieldBoarderClr, AppColors.kActiveFieldBoarderClr],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.3),
                              spreadRadius: 7,
                              blurRadius: 7,
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ]
                      ),
                      child: Center(child: Text('Register',style: TextStyle(fontSize: 20,color: Colors.white),)),
                    ),
                    onTap: (){
                      _validateSupport();
                    },
                  ),
                  SizedBox(height: 70,),
                  Center(
                    child: RichText(
                      text: new TextSpan(
                          children: [
                            new TextSpan(
                                text: 'Have an account login here',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.green,fontWeight:FontWeight.bold,fontSize: 20.0),
                                recognizer: new TapGestureRecognizer()..onTap=() {
                                  // Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context)=> TermsConditions()));
                                }
                            )
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
  // Country Code
  Widget countryCode(){
    List<String> int =
    List<String>.generate(999, (index) => '${index + 1}');
    List<DropdownMenuItem> menuItemList = int
        .map((val) => DropdownMenuItem(
        value: val,
        child: Text("+\t" + val,style: TextStyle(fontSize:20,color: Colors.black),)))
        .toList();

    return  DropdownButton(
      iconSize: 25,
      value :selected,
      onChanged: (val){
        setState(() {
          selected = val;
          debugPrint('get value : $selected');
        });
      },
      items: menuItemList,
    );
  }
}