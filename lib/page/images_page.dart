import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  final List<String> urlImages;

  const ImagesPage({
    Key? key,
    required this.urlImages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Selected Images'),
          centerTitle: true,
        ),
        body: ListView(
          children: urlImages
              .map((urlImage) => Image.network(
                    urlImage,
                    fit: BoxFit.cover,
                    height: 300,
                  ))
              .toList(),
        ),
      );
}
