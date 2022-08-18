import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 400,
            child: PngImage(name: ImageItems().appleBook)
        ),
        Image.network("https://i.kym-cdn.com/photos/images/masonry/001/411/204/30c.png",
        errorBuilder: (context, error, stackTrace) => PngImage(name: ImageItems().appleBook),)
        ],
      ),
    );
  }
}



class ImageItems {
  final String appleWithBook = "assets/school_education_study_read_books_apple_fruit-512.png";
  final String appleBook = "school_education_study_read_books_apple_fruit-512";
}

class PngImage extends StatelessWidget {
  PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  final String _ImagePath = "https://i.kym-cdn.com/photos/images/masonry/001/411/204/30c.png";

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}