import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/bottom_bar.dart';
import 'package:flutter_web/routing/routes.dart';
import 'package:flutter_web/widgets/signUp_logIn/SignUpForm.dart';
import 'package:flutter_web/widgets/responsive.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              iconTheme: IconThemeData(color: Color(0xFF077bd7)),
              centerTitle: true,
              backgroundColor: Colors.white.withOpacity(1),
              elevation: 0,
              title: Text(
                'eBookStore',
                style: TextStyle(
                  color: Color(0xFF077bd7),
                  fontSize: 26,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Navigator.of(context).pushNamed(RoutesName.home);
                      },
                      child: Column(
                        children: [
                          Text(
                            'eBookStore',
                            style: TextStyle(
                              color: Color(0xFF077bd7),
                              fontSize: 26,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              letterSpacing: 3,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: ResponsiveWidget.isSmallScreen(context)
                    ? screenSize.height * 0.05
                    : screenSize.height * 0.02,
                left: ResponsiveWidget.isSmallScreen(context)
                    ? screenSize.width / 12
                    : screenSize.width / 15,
                right: ResponsiveWidget.isSmallScreen(context)
                    ? screenSize.width / 12
                    : screenSize.width / 15,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                elevation: 5.0,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: screenSize.width / 3.3,
                        height: screenSize.height / 1.2,
                        color: Color(0xFF077bd7),
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 50, right: 20, left: 20),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 60.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 5.0, bottom: 5.0),
                                  child: Text("Let's setup your account",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 5.0, bottom: 5.0),
                                  child: Text(
                                    "It should only take a couple of minutes to create your account",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  height: 50.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 5.0, bottom: 5.0),
                                  child: Text(
                                    "Already have an account?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                MaterialButton(
                                  color: Colors.lightBlue,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(RoutesName.login);
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: screenSize.width / 2.2,
                        height: screenSize.height / 1.2,
                        padding: EdgeInsets.only(top: 20, right: 20, left: 40),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35.0,
                                  fontFamily: 'Merriweather'),
                            ),
                            const SizedBox(height: 20),
                            SignUpForm(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenSize.height / 10),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
