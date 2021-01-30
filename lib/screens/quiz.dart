import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import '../data/quiz_list.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        height: 370.0,
        width: 350.0,
        child: ListView.builder(
          // shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          itemCount: choices.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final Choice cho = choices[index];
            return RankingList(
              // onTap: () {},
              choiced: cho,
            );
          },
        ),
      ),

      //  Container(
      //   child: Center(
      //     child: FutureBuilder(
      //       future: DefaultAssetBundle.of(context).loadString('data/quiz.json'),
      //       builder: (context, snapshot) {
      //         var mydata = json.decode(snapshot.data.toString());
      //         return ListView.builder(
      //           // itemCount: mydata.length,
      //           itemBuilder: (BuildContext context, int index) {
      //             return RankingList(
      //               categories: mydata[index]["categories"],
      //               img_link: mydata[index]["img_link"],
      //             );
      //           },
      //         );
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}

class RankingList extends StatelessWidget {
  final Choice choiced;

  // ignore: non_constant_identifier_names
  // ignore: non_constant_identifier_names
  const RankingList({Key key, this.choiced}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              CachedNetworkImage(
                imageUrl: choiced.img_link,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              // Column(

              // ),

              // CachedNetworkImage(
              //  imageUrl: img_link ,
              //  imageBuilder:(context,imageProvider)=> Container(
              //    decoration : BoxDecoration(
              //      image: DecorationImage(
              //        image: imageProvider,
              //        fit: BoxFit.cover,
              //        colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn
              //      )
              //    )
              // ),
              // ),
            ],
          ),
          Column(),
          Column(),
        ],
      ),
    );

    // ListTile(
    //     title: Text(name),
    //     leading: CircleAvatar(
    //       child: Text(rank),
    //     ));
  }
}
