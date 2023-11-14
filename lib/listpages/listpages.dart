import 'package:flutter/material.dart';

class ListPages extends StatelessWidget {

  final String imageurl;
  final String imagetext;

  const ListPages(
  {super.key, required this.imageurl, required this.imagetext}
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(imageurl, height: 500, width: 550,),
        Text(imagetext, style: const TextStyle(fontSize: 24),),
      ],
    );
  }
}
