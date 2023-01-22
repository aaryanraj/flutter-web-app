import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue.withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Books',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Contact',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2023 | eBookStore',
                    style: TextStyle(
                      color: Colors.blueGrey.shade300,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
