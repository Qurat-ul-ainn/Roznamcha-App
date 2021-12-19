import 'package:flutter/material.dart';
import 'package:trade/constClass/ui_components_constants.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen>
    with TickerProviderStateMixin {
  final _shopNameController = TextEditingController();
  final _emailController = TextEditingController();

  bool showFront = false;
  TabController tabController;
  var _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController =
        new TabController(initialIndex: _currentIndex, length: 3, vsync: this);
    //  cInd = widget.tabIndex;
    setState(() {
      tabController =
          new TabController(initialIndex: 0, length: 3, vsync: this);
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/profile-bg2.png',
                      width: 450,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 00,
                    left: 20,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 130,
                          child: Image.asset(
                            'assets/images/oval-green.png',
                            fit: BoxFit.cover,
                            height: 350,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 70,
                    // right: 00,
                    left: 170,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 130,
                          child: Text(
                            "Jackson Simmons",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
              customTabs(),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTabs() {
    return Container(
      //color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            // height: 40,
            margin: EdgeInsets.only(top: 15.0),
            child: TabBar(
              unselectedLabelColor: Colors.grey,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3.5,
                  color: Colors.cyan,
                ),
                insets: EdgeInsets.only(
                  // top: 20.0,
                  left: 18.0,
                  right: 70.0,
                ),
              ),
              labelColor: Colors.cyan,
              controller: tabController,
              // labelStyle: TextStyle(fontSize: 15.0),
              onTap: (index) {
                _currentIndex = index;
                setState(() {
                  //  tabControllers();
                  debugPrint('tab controller');
                });
              },
              tabs: <Widget>[
                Container(
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'PROFILE',
                    )),
                Container(
                    height: 35,
                    width: double.infinity,
                    child: Text('SHIPPING ADDRESS')),
                Container(
                    height: 35,
                    width: double.infinity,
                    child: Text(
                      'CHANGE PASSWORD',
                    )),
              ],
            ),
          ),
          Container(
            height: 800,
            color: Colors.white,
            child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: tabController,
                children: <Widget>[
                  Container(
                    child: Center(child: Text('Feature')),
                  ),
                  Container(
                    child: Center(child: Text('Invoice Setting')),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8.0,
                        ),
                        SubTxt(
                          txt: "Current Password",
                        ),
                        TextFieldComponent(
                          txtHint: "Current Password",
                          passHide: false,
                          width: MediaQuery.of(context).size.width * 1,
                          txtController: _shopNameController,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SubTxt(
                          txt: "New Password",
                        ),
                        TextFieldComponent(
                          txtHint: "New Password",
                          passHide: false,
                          width: MediaQuery.of(context).size.width * 1,
                          txtController: _emailController,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SubTxt(
                          txt: "Repeat New Password",
                        ),
                        TextFieldComponent(
                          txtHint: "Repeat New Password",
                          passHide: false,
                          width: MediaQuery.of(context).size.width * 1,
                          txtController: _emailController,
                        ),
                        SizedBox(
                          height: 100.0,
                        ),
                        Row(
                          children: [
                            FloatingArrowButton(
                              btnFunction: () {
                                //Function for navigate back on which screen
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            CustomGradientButton(
                              btnTxt: "Update Password",
                              btnWidth:
                                  MediaQuery.of(context).size.width * 0.70,
                              btnClr: LinearGradient(
                                colors: <Color>[
                                  Colors.cyan[400],
                                  Colors.green[400]
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
