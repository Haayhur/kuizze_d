import 'package:fae/widgets/custom_text_field.dart';
import 'package:fae/widgets/mainbotton.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              child: Stack(children: [
                CircleAvatar(child: Text('C')),
                // Positioned(
                //   // child: Icon(Icons.dot),
                //   top: 25.0,
                //   left: 5.0,
                // )
              ]),
            ),
            Container(
              color: kwhite,
              child: Column(
                children: [
                  _ProfileContainer(title: " Name", name: 'Dale Carnegie'),
                  SizedBox(),
                  Divider(),
                  _ProfileContainer(
                      title: " Email", name: 'DaleCarnegie@gmail.com'),
                  SizedBox(),
                  Divider(),
                  _ProfileContainer(title: " Password", name: 'Password123'),
                  Divider(),
                  _ProfileContainer(title: " Mobile No", name: '1-2345-789658'),
                ],
              ),
            ),
            MainActionButton(
              label: Text('y'),
            ),
            Mainbutton(
              title: 'CREATE AN ACCOUNT',
              containerColor: Colors.pinkAccent,
              textColor: Colors.white,
              onTap: () {},
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Update'),
              color: korange,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileContainer extends StatelessWidget {
  final String title, name;

  const _ProfileContainer({
    Key key,
    this.title,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(title), Text(name)],
    );
  }
}
