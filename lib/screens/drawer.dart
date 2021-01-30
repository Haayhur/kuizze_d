import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.7),
            // color: Theme.of(context).primaryColor.withOpacity(0.7),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                leading: CircleAvatar(
                  child: Text(
                    'D',
                    style: TextStyle(),
                  ),
                ),
                title: Text('Dale Carnegie'),
                subtitle: Text('Active')),
            // UserAccountsDrawerHeader(
            //   currentAccountPicture:
            //       CircleAvatar(backgroundColor: kblue, child: Text('A')),
            //   accountEmail: Text('Active'),
            //   accountName: null,
            // ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              title: Text(
                'Home',
                style: TextStyle(),
              ),
              leading: Icon(Icons.home),
            ),
            Divider(),
            ListTile(
              selectedTileColor: Colors.pink,
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              title: Text('Profile'),
              leading: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/ranking');
              },
              title: Text('Ranking'),
              leading: Icon(Icons.star),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              title: Text('Help & Feedback'),
              leading: Icon(Icons.help),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
