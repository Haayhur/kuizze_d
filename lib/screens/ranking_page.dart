import 'package:flutter/material.dart';
import 'dart:convert';

class RankingPage extends StatefulWidget {
  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString('data/data.json'),
            builder: (context, snapshot) {
              var mydata = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemCount: mydata.length,
                itemBuilder: (BuildContext context, int index) {
                  return RankingListTile(
                    name: "name:" + mydata[index]["name"],
                    rank: "name:" + mydata[index]["rank"],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class RankingListTile extends StatelessWidget {
  final String rank, name;

  const RankingListTile({Key key, this.rank, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(name),
        leading: CircleAvatar(
          child: Text(rank),
        ));
  }
}
