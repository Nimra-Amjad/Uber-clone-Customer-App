import 'package:customer_app/global/global.dart';
import 'package:customer_app/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  String? name;
  String? email;
  MyDrawer({
    Key? key,
    this.name,
    this.email,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //drawer header
          Container(
            height: 165,
            color: Colors.grey,
            child: DrawerHeader(
                decoration: const BoxDecoration(color: Colors.black),
                child: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.name!,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.email!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
          //drawer body
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.black,
              ),
              title: Text(
                "History",
                style: TextStyle(color: Colors.white54),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                "Visit Profile",
                style: TextStyle(color: Colors.white54),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.black,
              ),
              title: Text(
                "About",
                style: TextStyle(color: Colors.white54),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              fAuth.signOut();
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => MySplashScreen()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                "Sign Out",
                style: TextStyle(color: Colors.white54),
              ),
            ),
          )
        ],
      ),
    );
  }
}
