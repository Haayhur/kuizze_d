import 'package:fae/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Createaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.view_quilt,
            size: 50,
          ),
          SizedBox(height: 30.0),
          Text(
            'QUIZZE',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          CustomTextField(
            prefixIcon: Icon(Icons.phone_android),
            keyboardType: TextInputType.phone,
            labelText: 'Mobile No',
          ),
          RaisedButton(onPressed: () {}, color: kblue, child: Text('Send OTP')),
          Text('OR'),
          Text('Sign in With'),
          Row(
            children: [
              CircleAvatar(
                child: Text('f'),
              ),
              CircleAvatar(
                child: Text('g'),
              ),
              CircleAvatar(
                child: Text('t'),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
