import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final String imageUrl;

  const MovieDetails({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Image.network(imageUrl),
      ),
    );
  }
}
