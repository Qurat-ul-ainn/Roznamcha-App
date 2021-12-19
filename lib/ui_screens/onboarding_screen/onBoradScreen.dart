import 'package:flutter/material.dart';
import 'package:trade/ui_screens/login_screens/registration_screen.dart';
import 'package:trade/constClass/onboarding_data.dart';
import '../../constClass/ui_components_constants.dart';
import 'onboarding_languages.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  List<SliderModel> mySlides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.5),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey[600] : Colors.grey[400],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySlides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: [
              CustomGestureText(
                onTapFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationScreen()),
                  );
                },
                txt: "Skip",
              )
            ],
            iconTheme: IconThemeData(color: Colors.white),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height - 100,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
              children: <Widget>[
                SliderTittle(
                  imageAssetPath: mySlides[0].getImageAssetPath(),
                  tittle: mySlides[0].getTitle(),
                  description: mySlides[0].getDesc(),
                ),
                SliderTittle(
                  imageAssetPath: mySlides[1].getImageAssetPath(),
                  tittle: mySlides[1].getTitle(),
                  description: mySlides[1].getDesc(),
                ),
                SliderTittle(
                  imageAssetPath: mySlides[2].getImageAssetPath(),
                  tittle: mySlides[2].getTitle(),
                  description: mySlides[2].getDesc(),
                ),
              ],
            ),
          ),
          bottomSheet: slideIndex != 2
              ? Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomGestureText(
                        txt: "PREV",
                        onTapFunction: () {
                          if (slideIndex - 1 < 0) {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => OnBoardingLanguages()));
                          } else {
                            controller.animateToPage(slideIndex - 1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.linear);
                          }
                        },
                      ),
                      Container(
                        child: Row(
                          children: [
                            for (int i = 0; i < 3; i++)
                              i == slideIndex
                                  ? _buildPageIndicator(true)
                                  : _buildPageIndicator(false),
                          ],
                        ),
                      ),
                      CustomGestureText(
                        txt: "NEXT",
                        onTapFunction: () {
                          controller.animateToPage(slideIndex + 1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linear);
                        },
                      ),
                    ],
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomGestureText(
                        txt: "PREV",
                        onTapFunction: () {
                          if (slideIndex - 1 < 0) {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => OnBoardingLanguages()));
                          } else {
                            controller.animateToPage(slideIndex - 1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.linear);
                          }
                        },
                      ),
                      Container(
                        child: Row(
                          children: [
                            for (int i = 0; i < 3; i++)
                              i == slideIndex
                                  ? _buildPageIndicator(true)
                                  : _buildPageIndicator(false),
                          ],
                        ),
                      ),
                      CustomGestureText(
                        txt: "NEXT",
                        onTapFunction: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => RegistrationScreen()));
                        },
                      ),
                    ],
                  ),
                )),
    );
  }
}

class SliderTittle extends StatelessWidget {
  final String imageAssetPath, tittle, description;
  SliderTittle({this.imageAssetPath, this.tittle, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            imageAssetPath,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            tittle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
