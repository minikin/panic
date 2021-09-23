import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/index.dart';
import '../movie_details/movie_details_screen.dart';
import 'discover_item.dart';

const hugeImageUrl =
    'https://firebasestorage.googleapis.com/v0/b/assets-6473a.appspot.com/o/anthony-cantin-vWeHogiLqqU-unsplash.jpg?alt=media&token=2998457e-cec4-4d90-8d9a-63212f18e954';

class DiscoverScreen extends StatelessWidget {
  final DiscoverResponse discoverResponse;

  const DiscoverScreen({
    required this.discoverResponse,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Discover',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 1,
      ),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return Container(
              margin: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: discoverResponse.results.length,
                itemBuilder: (_, index) {
                  return DiscoverItem(
                    item: discoverResponse.results[index],
                    onTapped: print,
                    onLongPress: (id) {
                      _showMovieDetails(context, hugeImageUrl);
                    },
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 9 / 16,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showMovieDetails(BuildContext context, String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute<MovieDetails>(
        settings: const RouteSettings(name: '/movie-id'),
        builder: (context) => MovieDetails(imageUrl: imageUrl),
      ),
    );
  }
}
