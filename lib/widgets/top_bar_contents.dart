import 'package:flutter/material.dart';
import 'package:flutter_web/screens/home_page/home_page.dart';
import 'package:flutter_web/screens/log_in/Login.dart';
import 'package:flutter_web/screens/sign_up/signUp.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: screenSize.width / 8),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(
                            color: _isHovering[0]
                                ? Color(0xFF077bd7)
                                : Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 102, 134, 231),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 30),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Books',
                          style: TextStyle(
                              color: _isHovering[0]
                                  ? Color(0xFF077bd7)
                                  : Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 102, 134, 231),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 30),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[2] = true : _isHovering[2] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(
                              color: _isHovering[0]
                                  ? Color(0xFF077bd7)
                                  : Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 102, 134, 231),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 30),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[3] = true : _isHovering[3] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                              color: _isHovering[0]
                                  ? Color(0xFF077bd7)
                                  : Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[3],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 102, 134, 231),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 30),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[4] = true : _isHovering[4] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Contact',
                          style: TextStyle(
                              color: _isHovering[0]
                                  ? Color(0xFF077bd7)
                                  : Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[4],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 102, 134, 231),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 30),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[5] = true : _isHovering[5] = false;
                      });
                    },
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              color: _isHovering[0]
                                  ? Color(0xFF077bd7)
                                  : Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[5],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 102, 134, 231),
                          ),
                        )
                      ],
                    ),
                  ),
                  //SizedBox(width: screenSize.width / 30),
                  Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[6] = true : _isHovering[6] = false;
                      });
                    },
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              color: _isHovering[0]
                                  ? Color(0xFF077bd7)
                                  : Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[6],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 102, 134, 231),
                          ),
                        )
                      ],
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
}
