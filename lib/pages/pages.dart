import 'package:flutter/material.dart';
import 'package:untitled12/listpages/listpages.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<String> titles = ['Oculus Quest 3',
    'Oculus Quest 2',
    'Oculus Pro',
    'Oculus Quest',
    'HTC Vive',
    'Valve Index'];
  final List<String> images = ['https://media.wired.com/photos/651450bab1fbf45f41ffba5a/master/pass/Headset_3-meta-gear.jpg',
    'https://virtuality.club/images/product/1972/title/1972-16704-9-2-490x402.jpg',
    'https://virtuality.club/images/product/2254/title/2254-7012.jpg',
    'https://spb.aura-rent.ru/wp-content/uploads/2020/03/oculus-quest-1.1.jpg',
    'https://static.insales-cdn.com/images/products/1/2273/677497057/Oculus-Quest-1.png',
    'https://cdn.hum3d.com/wp-content/uploads/Valve/001_Valve_Index/Valve_Index_1000_0001.jpg'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Список VR очков', style: TextStyle(fontSize: 24))
        ),
      ),
      body:
      ListView.builder(
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int index)
          {
            return ListPages(
                imageurl: images[index],
                imagetext: titles[index]
            );
          }
      ),
    );
  }
}
