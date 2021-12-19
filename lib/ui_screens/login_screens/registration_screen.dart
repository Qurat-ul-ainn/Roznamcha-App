import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:trade/constClass/colors.dart';
import 'package:trade/constClass/configration.dart';
import 'package:trade/constClass/heights.dart';
import 'package:trade/db/roznamchaappdb.dart';
import 'package:trade/db/users_model.dart';
import 'package:trade/ui_screens/login_screens/login_screen.dart';
import 'package:http/http.dart' as http;
import 'package:trade/ui_screens/onboarding_screen/onBoradScreen.dart';
import 'package:trade/validations/form_valdation.dart';
import 'package:trade/constClass/ui_components_constants.dart';




class RegistrationScreen extends StatefulWidget {

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool visible = false,_autoValidate = false,_passwordVisible;

  String ctCode,selected;



  final _shopNameController = TextEditingController();
  final _passController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();

//  var data,msg;
//  void _onLoading() {
//    AlertDialog alertDialog = AlertDialog(
//      content: new Row(
//        children: <Widget>[
//          new CircularProgressIndicator(),
//          SizedBox(width: 30,),
//          new Text("Registering.. Please Wait !"),
//        ],
//      ),
//    );
//    showDialog(
//      context: context,
//      barrierDismissible: false,
//      builder: (context)=> alertDialog,
//    );
//    new Future.delayed(new Duration(seconds: 3), () {
//      Navigator.pop(context); //pop dialog
//      userRegistration() ;
//      msg  = data['msg'].toString();
//      debugPrint('msg ${data['msg'].toString()}');
//    });
//  }
//  showAlertDialog(BuildContext context) {
//    // set up the button
//    Widget okButton = FlatButton(
//      child: Text("OK",
//        style: TextStyle(fontSize: 15,),),
//      onPressed: () {
//        Navigator.of(context).pop();
//      },
//    );
//
//    // set up the AlertDialog
//    AlertDialog alert = AlertDialog(
//      title: Text("Alert"),
//      content: Text("${msg.toString()}",
//        style: TextStyle(fontSize: 18,),),
//      actions: [
//        okButton,
//      ],
//    );
//    // show the dialog
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        return alert;
//      },
//    );
//  }
//
//  Future userRegistration() async {
//
//    // SERVER API URL
//    var url = preUrl + 'do_register.php';
//
//    // Store all data with Param Name.
//    // Starting Web API Call.
//    http.Response response = await http.post(url,
//        headers: {'Content-Type' :'application/json',},
//        //    body: json.encode(data)
//        body: jsonEncode({
//          'business_type':'retailer',
//          'referby':'flutter',
//          'business_name': _shopNameController.text,
//          'industry_type': selectedItem.queryType,
//          'email': _emailController.text,
//          'country_code': '+'+selected,
//          'mobile': _mobileController.text,
//          'password': _passController.text
//        })
//    );
//    data  = jsonDecode(response.body);
//    // debugPrint('data response is $data');
//
//    // If Web call Success than Hide the CircularProgressIndicator.
//    if (response.statusCode == 200) {
//      // if received response from web_service url.
//      setState(() {
//        debugPrint(data['msg'].toString());
//
//        // debugPrint(data['reply_data'].toString());
//        var encodeData = jsonEncode(data['reply_data']);
//        // insertUser2DB(encodeData);
//        //login page
//        // Navigator...
//      });
//      return data['msg'];
//    }else{
//      // if web_service didn't respond.
//      print(response.statusCode);
//      showAlertDialog(context);
//      // otherwise show an alert box
//    }
//  }

  var data;
  String msg;
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
    });
  }
  showAlertDialog(BuildContext context,String respMsg) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK",
        style: TextStyle(fontSize: 15,),),
      onPressed: () {
       //
        if(data['code'] == 200){
          // navigate to login
          Navigator.of(context).pop();
          debugPrint('sucess register');
        }else{
          Navigator.of(context).pop();
          debugPrint('register failed');
          // navigate pop
        }
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("${respMsg.toString()}",
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
          'business_name': _shopNameController.text,
          'industry_type': selectedItem.queryType,
          'email': _emailController.text,
          'country_code': '+'+selected,
          'mobile': _mobileController.text,
          'password': _passController.text
        })
    );
    data  = jsonDecode(response.body);
    // debugPrint('data response is $data');

    // If Web call Success than Hide the CircularProgressIndicator.
    if (data['code'] == 200) {
      // if received response from web_service url.
      setState(() {
        var encodeData = jsonEncode(data['reply_data']);
        msg = data['msg'];
         insertUser2DB(encodeData);
        //login page
        // Navigator...
      });
      return showAlertDialog(context,msg);
    }else{
      // if web_service didn't respond.
      // print(response.statusCode);
      if(data['code'] !=200){
        setState(() {
          msg = "Mobile Number already exists. Number must be unique.";
        }); return showAlertDialog(context,msg);
      }else{
        return null;
      }


      // otherwise show an alert box
    }
  }



  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
    selected ="1";
  }

  /*// Showing CircularProgressIndicator.
  setState(() {

  visible = true;
  });*/


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Navigator.of(context).pushReplacement(
            new MaterialPageRoute(builder: (context) => OnBoardScreen()));
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
              child: Form(
                key: formKey,
                autovalidate: _autoValidate,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          alignment: Alignment.centerLeft,
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        MainTxt(
                          txt: "REGISTER",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppWidgetHeight.kHeight,
                    ),

                    TextFieldForm(
                      fieldLabel: 'Business Name',
                      textHint: 'Shop Name',
                      txtController: _shopNameController,
                      validatorName: validateField,
                      passHide: false,
                    ),
                    SubTxt(
                      txt: "Industry",
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          border:
                          Border.all(color: AppColors.kFieldBoardColor)),
                      child: DropdownButtonFormField<RestDropDownSelectedItem>(
                        iconSize: 30,
                        iconEnabledColor: Colors.grey[300],
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors
                                        .white //AppColors.kFieldBoardColor
                                ))),
                        value: selectedItem,
                        hint: Text(
                          '...Select one...',
                          style: TextStyle(
                              color: AppColors.kFieldBoardColor,
                              fontSize: 15.0),
                        ),
                        onChanged: (RestDropDownSelectedItem newValue) {
                          setState(() {
                            selectedItem = newValue;
                            print('selected item ${selectedItem.queryType}');
                          });
                        },
                        validator: (value) =>
                        value == null ? 'Required' : null,
                        items:
                        restTypeItems.map((RestDropDownSelectedItem item) {
                          return new DropdownMenuItem<RestDropDownSelectedItem>(
                            value: item,
                            child: new Text(
                              item.queryType,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFieldForm(
                      fieldLabel: "Email Address",
                      textHint: 'yourname@gmail.com',
                      passHide: false,
                      txtController: _emailController,
                      validatorName: validateEmail,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SubTxt(
                              txt: "code",
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 10.0,
                                ),
                                padding: EdgeInsets.only(left: 2.0),
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(color: Colors.grey)),
                                child: countryCode()//CodeDropdown() //CodeDropdown(),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SubTxt(
                              txt: "Mobile Number",
                            ),
                            TextFieldComponent(
                              txtHint: "3098654268",
                              passHide: false,
                              fieldValidator: validateField,
                              width: MediaQuery.of(context).size.width * 0.72,
                              txtController: _mobileController,
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFieldForm(
                      fieldLabel: "Password",
                      textHint: 'Password',
                      txtController: _passController,
                      validatorName: validateField,
                      passHide: !_passwordVisible,
                      icon: IconButton(
                        icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 25.0,
                            color: Colors.grey[400]),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                    CustomGradientButton(
                      btnTxt: "Register",
                      btnWidth: MediaQuery.of(context).size.width * 1,
                      btnClr: AppColors.gradientBtnClr,
                      btnFunction: () {
                        if(validateForm()) {
                         _onLoading();
                          // userRegistration();
                        }else{
                          print('error validation');
                        }
                        _autoValidate = true;

                      },
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: CustomGestureText(
                        txt: "Have an account login here",
                        onTapFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  // Country Code
  Widget countryCode(){
    List<String> int =
    List<String>.generate(999, (index) => '${index + 1}');
    List<DropdownMenuItem> menuItemList = int
        .map((val) => DropdownMenuItem(value: val, child: Text("+\t" + val,style: TextStyle(color: Colors.grey[500]),)))
        .toList();

    return  DropdownButton(
      iconSize: 0,
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



class RestDropDownSelectedItem {
  final String queryType;
  final int id;

  const RestDropDownSelectedItem(this.id, this.queryType);
}



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


void insertUser2DB(String inputJson)async{
  print(inputJson);

  Map<String, dynamic> userData = jsonDecode(inputJson);



  final user = UsersModel(
    sess_bp_week: userData['sess_bp_week'].toString(),
    sess_bp_adr: userData['sess_bp_adr'].toString(),
    sess_bp_name: userData['sess_bp_name'].toString(),
    sess_bp_user_id: userData['sess_bp_user_id'].toString(),
    sess_bp_username: userData['sess_bp_username'].toString(),
    sess_bp_emp: userData['sess_bp_emp'].toString(),
      sess_bp_privs: userData['sess_bp_privs'].toString(),
      sess_bp_currency: userData['sess_bp_currency'].toString(),
      sess_bp_gst: userData['sess_bp_gst'].toString(),
      sess_bp_vat: userData['sess_bp_vat'].toString(),
      sess_bp_tax: userData['sess_bp_tax'].toString(),
      sess_bp_salesman_commission: userData['sess_bp_salesman_commission'].toString(),
      sess_bp_agent_commision: userData['sess_bp_agent_commision'].toString(),
      sess_bp_timestamp: userData['sess_bp_timestamp'].toString(),
      sess_bp_print_header: userData['sess_bp_print_header'].toString(),
      sess_bp_print_urdu_invoice: userData['sess_bp_print_urdu_invoice'].toString(),
      sess_bp_print_header_note: userData['sess_bp_print_header_note'].toString(),
      sess_bp_print_footer_note: userData['sess_bp_print_footer_note'].toString(),
      sess_bp_print_default_template: userData['sess_bp_print_default_template'].toString(),
      sess_bp_barcode: userData['sess_bp_barcode'].toString(),
    sess_bp_variants: userData['sess_bp_variants'].toString(),
    sess_bp_secondary_units: userData['sess_bp_secondary_units'].toString(),
    sess_bp_token: userData['sess_bp_token'].toString(),
  );


  DBProvider appDb = DBProvider();

  await appDb.addItem(user);
  var users = await appDb.fetchUsers();
  print(users[users.length-1].sess_bp_name); //Title 1

}