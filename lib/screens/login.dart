import 'package:flutter/material.dart';
import 'package:flutter_web/screens/signUp.dart';
import 'package:flutter_web/widgets/responsive.dart';
import 'package:flutter_web/widgets/signUp_logIn/LoginForm.dart';
import 'package:flutter_web/widgets/bottom_bar.dart';
import 'package:flutter_web/routing/routes.dart';

class Login extends StatelessWidget {
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
                        height: screenSize.height / 1.6,
                        color: Color(0xFF077bd7),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 5.0, bottom: 5.0),
                                  child: Text(
                                    "Go ahead and Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 5.0, bottom: 5.0),
                                  child: Text(
                                    "It should only take a couple of seconds to login to your account",
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
                                    "Don't have an account?",
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
                                        .pushNamed(RoutesName.signup);
                                  },
                                  child: Text(
                                    "Create Account",
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
                        height: screenSize.height / 1.6,
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35.0,
                                  fontFamily: 'Merriweather'),
                            ),
                            LogInForm()
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
