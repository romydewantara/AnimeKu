
import 'package:anime_ku/ui/anime_movies.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimeKu', style: TextStyle(fontFamily: 'Roboto-Bold'),),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return const AnimeMovies();
            } else {
              return const AnimeMovies();
            }
          }
      )
    );
  }
}