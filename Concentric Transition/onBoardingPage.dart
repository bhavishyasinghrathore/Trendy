import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:shaadi_arrangement/loginWebView.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final List<Widget> screens = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  bool isArrowVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollUpdateNotification) {
            setState(() {
              isArrowVisible = false;
            });
          } else if (scrollNotification is ScrollEndNotification) {
            setState(() {
              isArrowVisible = true;
            });
          }
          return true;
        },
        child: Container(
          child: Stack(
            children: [
              ConcentricPageView(
                direction: Axis.vertical,
                colors: [
                  Color(0xffCB254B),
                  Colors.white,
                  Color(0xffCB254B),
                  Colors.white,
                ],
                itemCount: screens.length,
                itemBuilder: (int index) {
                  return screens[index];
                },
                onFinish: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginWebView()),
                  );
                },
              ),
              if (isArrowVisible)
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.23,
                  left: MediaQuery.of(context).size.width / 2 - 20,
                  child: Container(
                    width: 0,
                    height: 0,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/BG.png"),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.2,
                ),
                Image.asset(
                  "assets/images/Logo.png",
                  height: constraints.maxHeight * 0.20,
                  width: constraints.maxWidth * 0.65,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.08,
                ),
                // Text(
                //   "The Knot",
                //   style: TextStyle(
                //     fontFamily: "Callista",
                //     color: Colors.white,
                //     fontSize: constraints.maxHeight * 0.06,
                //     fontWeight: FontWeight.bold,
                //     letterSpacing: 1,
                //   ),
                // ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                Text(
                  "Your all in one Wedding\n" " Planner",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: constraints.maxHeight * 0.03,
                    wordSpacing: 1,
                    letterSpacing: 2,
                    fontFamily: "Callista",
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.18,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/Background2.png"),
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.1,
                    ),
                    Image.asset(
                      "assets/images/Screen2.png",
                      height: constraints.maxHeight * 0.32,
                      width: constraints.maxWidth * 0.75,
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.05,
                    ),
                    Text(
                      "We help you manage when\n it comes to Wedding",
                      style: TextStyle(
                        fontSize: constraints.maxHeight * 0.030,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 1,
                        letterSpacing: 2,
                        fontFamily: "Callista",
                        color: Color(0xffCB254B),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     SizedBox(
                    //       width: constraints.maxWidth * 0.1,
                    //       child: Divider(
                    //         thickness: 1,
                    //         color: Color(0xff9c1937),
                    //         endIndent: 2,
                    //       ),
                    //     ),
                    //     Text(
                    //       "Shaadi Arrangement",
                    //       style: TextStyle(
                    //         fontSize: constraints.maxHeight * 0.02,
                    //         fontWeight: FontWeight.bold,
                    //         wordSpacing: 1,
                    //         letterSpacing: 2,
                    //         fontFamily: "Callista",
                    //         color: Color(0xff9c1937),
                    //       ),
                    //       textAlign: TextAlign.center,
                    //     ),
                    //     SizedBox(
                    //       width: constraints.maxWidth * 0.1,
                    //       child: Divider(
                    //         indent: 2,
                    //         thickness: 1,
                    //         color: Color(0xff9c1937),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: constraints.maxHeight * 0.19,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/BG.png"),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.10,
                ),
                Image.asset(
                  "assets/images/Screen3.png",
                  height: constraints.maxHeight * 0.32,
                  width: constraints.maxWidth * 0.75,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
                Text(
                  "Discover Vendors",
                  style: TextStyle(
                    fontFamily: "Callista",
                    color: Colors.white,
                    fontSize: constraints.maxHeight * 0.045,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                Text(
                  "Choose from thousands \n" " of local vendors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: constraints.maxHeight * 0.020,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1,
                    letterSpacing: 2,
                    fontFamily: "PlayFairDisplay",
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.17,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/topCenter4.png",
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/bottomCenter.png",
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.1,
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/Screen4.png",
                        height: constraints.maxHeight * 0.32,
                        width: constraints.maxWidth * 0.75,
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.05,
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.01,
                    ),
                    Text(
                      "We take care of everything \neven Invitations",
                      style: TextStyle(
                        color: Color(0xffCB254B),
                        fontSize: constraints.maxHeight * 0.035,
                        wordSpacing: 1,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontFamily: "Callista",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.19,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
