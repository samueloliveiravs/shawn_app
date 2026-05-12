import 'package:flutter/material.dart';
import 'package:shawn_app/pages/Hero_Pages/img_hero_page.dart';

class ImgHeroItem extends StatelessWidget {
  final String url;
  final String tag;
  const ImgHeroItem({super.key, required this.url, required this.tag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImgHeroPage(tag: tag, url: url),
          ),
        );
      },
      child: Hero(
        tag: tag,
        child: ClipOval(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
