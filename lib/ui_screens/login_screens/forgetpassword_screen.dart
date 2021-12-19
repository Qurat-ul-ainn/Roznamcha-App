import 'package:flutter/material.dart';
import 'package:trade/constClass/colors.dart';

import '../../constClass/ui_components_constants.dart';



class ForgotPasswordScreen extends StatelessWidget {
  final _codeController = TextEditingController();
  final _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [

                  IconButton(
                    alignment: Alignment.centerLeft,
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  MainTxt(
                    txt: "FORGOT PASSWORD",
                  ),
                ],
              ),
              Container(
                  padding:EdgeInsets.all(30.0),child: Text("Hm,it's seems you're in problem when signing.fill form below to get access your account.",textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),)),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Row(

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

                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubTxt(
                            txt: "Mobile Number",
                          ),
                          TextFieldComponent(
                            txtHint: "3098654268",
                            passHide: false,
                            width: MediaQuery.of(context).size.width*0.67,
                            txtController: _mobileController,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              CustomGradientButton(
                btnTxt: "Reset Password",
                btnWidth: MediaQuery.of(context).size.width*1,
                btnClr:  AppColors.gradientBtnClr
              ),

            ],
          ),
        ),
      ),
    );
  }
}
