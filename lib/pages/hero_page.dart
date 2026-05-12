import 'package:flutter/material.dart';
import 'package:shawn_app/shared/widgets/img_hero_item.dart';

class HeroPage extends StatelessWidget {
  HeroPage({super.key});

  final listaImg = [
    'https://i.pinimg.com/736x/5a/eb/87/5aeb8701c9195bd0024e2c09db408c61.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm-1gBn9c8vy5qPIjXXKYjcHdNSEJGT29nIA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl4MA4is_19tl2-z-ciW89YK8NSsCOPHjjwA&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: listaImg.length,
          itemBuilder: (context, index) {
            return ImgHeroItem(url: listaImg[index], tag: 'tag$index');
          },
        ),
      ),
    );
  }
}
