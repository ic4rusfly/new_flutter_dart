import 'package:flutter/material.dart';

class HighQuality extends StatelessWidget {
  const HighQuality({Key? key, required this.title}) : super(key: key);
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
            Navigator.pop(context, "Returned from HighQuality");
          },
          child: Image.network(
              'https://media.discordapp.net/attachments/494479193871220748/1043681360952446996/IMG_20221120_011626_190.png'),
        ),
      ),
    );
  }
}
