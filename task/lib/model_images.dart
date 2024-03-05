import 'package:flutter/material.dart';

class ModelImagesRow extends StatelessWidget {
  const ModelImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        ModelImage(imagePath: 'assets/model1.jpg'),
        ModelImage(imagePath: 'assets/model2.jpg'),
        ModelImage(imagePath: 'assets/model3.jpg'),
        ModelImage(imagePath: 'assets/model4.jpg'),
        ModelImage(imagePath: 'assets/model5.jpg'),
      ],
    );
  }
}

class ModelImage extends StatelessWidget {
  final String imagePath;

  const ModelImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 650,
          width: double.infinity,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
