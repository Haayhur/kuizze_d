import 'package:fae/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drawer.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('KUIZZE'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // automaticallyImplyLeading: false,
          // leading: Icon(Icons.menu),
        ),
        drawer: NavigationDrawer(),

        // Drawer(

        //   child: ListView(
        //     children: [
        //       ListTile(
        //           leading: CircleAvatar(
        //             child: Text(
        //               'D',
        //               style: TextStyle(),
        //             ),
        //           ),
        //           title: Text('Dale Carnegie'),
        //           subtitle: Text('Active')),
        //       // UserAccountsDrawerHeader(
        //       //   currentAccountPicture:
        //       //       CircleAvatar(backgroundColor: kblue, child: Text('A')),
        //       //   accountEmail: Text('Active'),
        //       //   accountName: null,
        //       // ),
        //       ListTile(
        //         onTap: () {
        //           Navigator.pushNamed(context, '/home');
        //         },
        //         title: Text(
        //           'Home',
        //           style: TextStyle(),
        //         ),
        //         leading: Icon(Icons.home),
        //       ),
        //       Divider(),
        //       ListTile(
        //         selectedTileColor: Colors.pink,
        //         onTap: () {
        //           Navigator.pushNamed(context, '/profile');
        //         },
        //         title: Text('Profile'),
        //         leading: Icon(Icons.person),
        //       ),
        //       Divider(),
        //       ListTile(
        //         onTap: () {
        //           Navigator.pushNamed(context, '/ranking');
        //         },
        //         title: Text('Ranking'),
        //         leading: Icon(Icons.star),
        //       ),
        //       Divider(),
        //       ListTile(
        //         onTap: () {
        //           Navigator.pushNamed(context, '/home');
        //         },
        //         title: Text('Help & Feedback'),
        //         leading: Icon(Icons.help),
        //       ),
        //       Divider(),
        //       ListTile(
        //         onTap: () {
        //           Navigator.pushNamed(context, '/home');
        //         },
        //         title: Text('Log Out'),
        //         leading: Icon(Icons.logout),
        //       ),
        //     ],
        //   ),
        // ),
        body: Container(
          // child:Column(),
          // children:<Widgets>[
          // child: AppBar(
          //   title: Text('DASHBOARD'),
          //   automaticallyImplyLeading: false,
          //   leading: Icon(Icons.menu),
          // ),
          child: Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Ranking'),
                        SizedBox(),
                        Text('14th',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                // textAlign: TextAlign.start,
                                )),
                      ]),
                ]),
          ),
        ),
      ),
    );
  }
}
