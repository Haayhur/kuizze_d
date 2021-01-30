import 'package:fae/screens/welcome/welcome_screen.dart';
import 'package:fae/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drawer.dart';
import 'quiz.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('DASHBOARD'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // automaticallyImplyLeading: false,
          // leading: Icon(Icons.menu),
        ),
        drawer: NavigationDrawer(),
        body: Column(
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => WelcomeScreen(),
                      ));
                },
                child: Container(child: Text('Start the Test')),
              ),
            ),
            // IconButton(),
            // VxBox.make(),
            Container(
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
                      // QuizPage(),
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
          ],
        ),
      ),
    );
  }
}

// class TapMeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return [
//       "Tap me"
//           .text
//           .maxLines(4)
//           .semiBold
//           .ellipsis
//           .blue500
//           .minFontSize(20)
//           .make(),
//       "assets/vxbox.png".circularAssetImage(radius: 50)
//     ].row().onInkTap(() {
//       context.navigator.push(const SecondPage("assets/vxbox.png")
//           .vxPreviewRoute(parentContext: context));
//     });
//   }
// }
