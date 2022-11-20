import 'package:flutter/material.dart';
import 'about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Look At Me',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Blured(title: 'Blured'),
    );
  }
}

class Blured extends StatelessWidget {
  const Blured({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HighQuality(title: 'HighQuality');
            }));
          },
          child: Image.network(
              'https://media.discordapp.net/attachments/494479193871220748/974248255712022558/yelaz_pic_glass_1.png'),
        ),
      ),
    );
  }
}
