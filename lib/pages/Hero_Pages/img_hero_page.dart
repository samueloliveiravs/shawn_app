import 'package:flutter/material.dart';

class ImgHeroPage extends StatelessWidget {
  final String url;
  final String tag;
  const ImgHeroPage({super.key, required this.url, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Hero(tag: tag, child: Image.network(url))],
      ),
    );
  }
}
