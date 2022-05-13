import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
            'https://i.blogs.es/d91f07/image-1-/450_1000.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
