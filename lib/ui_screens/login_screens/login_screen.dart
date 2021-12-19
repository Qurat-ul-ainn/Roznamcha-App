import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';
import 'package:trade/ui_screens/login_screens/forgetpassword_screen.dart';
import 'package:trade/ui_screens/login_screens/registration_screen.dart';

import '../../constClass/ui_components_constants.dart';


class LoginScreen extends StatelessWidget {
  final _passController = TextEditingController();
  final _codeController = TextEditingController();
  final _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10.0),
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
                      txt: "LOGIN",
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubTxt(
                          txt: "code",
                        ),
                        TextFieldComponent(
                          txtHint: "+92",
                          passHide: false,
                          width: MediaQuery.of(context).size.width*0.16,
                          txtController: _codeController,
                        ),
                      ],
                    ),
                    SizedBox(width: 32,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubTxt(
                          txt: "Mobile Number",
                        ),
                        TextFieldComponent(
                          txtHint: "3098654268",
                          passHide: false,
                          width: MediaQuery.of(context).size.width*0.66,
                          txtController: _mobileController,
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SubTxt(
                  txt: "Password",
                ),
                TextFieldComponent(
                  txtHint: "Password",
                  passHide: false,
                  icon: Icon(Icons.remove_red_eye,size: 25.0,color: Colors.grey[400],),
                  width: MediaQuery.of(context).size.width*1,
                  txtController: _passController,
                ),
                SizedBox(
                  height: 10.0,
                ),
                CustomGradientButton(
                  btnTxt: "Login",
                  btnWidth: MediaQuery.of(context).size.width*1,
                  btnClr: AppColors.gradientBtnClr,
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [ CustomGestureText(
                   txt: "Register here",
                   onTapFunction: (){
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegistrationScreen()),
        );
        },
                 ),
                   ColoredGestureText(
                     txt: "Forgot password?",
                     onTapFunction: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                         );
                     },
                   ),],
               ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
