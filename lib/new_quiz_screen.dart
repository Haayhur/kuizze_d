import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Quiz_screen extends StatefulWidget {
  @override
  _Quiz_screenState createState() => _Quiz_screenState();
}

class _Quiz_screenState extends State<Quiz_screen> {
  final String url = "https://herkutest-ap.herokuapp.com/questions";
  List data;
  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }
  Future<String> getJsonData() async {
    var response = await http.get(
      Uri.encodeFull(url),
      headers: {"Accept" : "application/json"}
    );
    print(response.body);

    setState((){
      var convertDataToJson= JSON.decode(response.body);
      data = convertDataToJson[''];
    });
    return " success";
  } 


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

  }
}
