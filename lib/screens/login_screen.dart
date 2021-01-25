import 'package:fae/widgets/custom_text_field.dart';
import 'package:fae/widgets/mainbotton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 58.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.view_quilt,
                size: 50,
                color: Colors.blue,
              ),
              SizedBox(height: 20.0),
              Text(
                'KUIZZE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: CustomTextField(
                  prefixIcon: Icon(
                    CupertinoIcons.device_phone_portrait,
                    // FontAwesomeIcons.mobile,
                    // Icons.pin_drop,
                    // color: Colors.grey,
                  ),
                  keyboardType: TextInputType.phone,
                  labelText: 'Enter OTP',
                ),
              ),
              SizedBox(height: 30),
              MainActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                label: Text(
                  'Login',
                  style: TextStyle(
                    color: kblue,
                  ),
                  // color: kblue,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text('OR , Sign in With'),
              SizedBox(height: 30),
              // Text(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.googlePlusG),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
