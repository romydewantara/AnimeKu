import 'package:anime_ku/model/anime_movie.dart';
import 'package:anime_ku/ui/detail_anime_movie.dart';
import 'package:flutter/material.dart';

class AnimeMovies extends StatefulWidget {

  const AnimeMovies({super.key});

  @override
  _AnimeMovies createState() => _AnimeMovies();

}

class _AnimeMovies extends State<AnimeMovies> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Best Anime Movies of All Time', style: TextStyle(fontFamily: 'Sansita', color: Colors.deepPurpleAccent)),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const AnimeMoviesMobile();
          } else if (constraints.maxWidth >= 1200) {
            return AnimeMoviesWeb(gridCount: 6, size: constraints.maxWidth);
          } else {
            return AnimeMoviesWeb(gridCount: 4, size: constraints.maxWidth);
          }
        }
      )
    );
  }
}

class AnimeMoviesMobile extends StatelessWidget {
  const AnimeMoviesMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = ((size.height - kToolbarHeight - 24) / 2) - 90;
    final double itemWidth = (size.width / 2) - 15;
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: (itemWidth / itemHeight),
      controller: ScrollController(keepScrollOffset: false),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: animeMovieList.map((anime) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailAnimeMovie(anime: anime,);
            }));
          },
          child: Container(
            color: Colors.transparent,
            margin: const EdgeInsets.all(1.0),
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    children: <Widget>[
                      Expanded(child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          anime.imagePoster,
                          fit: BoxFit.cover,
                        ),
                      )),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                            anime.movieName,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Roboto-Bold',
                              fontSize: 12,
                              color: Colors.deepPurpleAccent,
                            )
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
        );
      }).toList(),
    );
  }
}

class AnimeMoviesWeb extends StatelessWidget {
  final int gridCount;
  final double size;
  const AnimeMoviesWeb({super.key, required this.gridCount, required this.size});
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height / 2);
    final double itemWidth = itemHeight;
    return GridView.count(
      crossAxisCount: gridCount,
      childAspectRatio: (itemWidth / itemHeight),
      controller: ScrollController(keepScrollOffset: false),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: animeMovieList.map((anime) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailAnimeMovie(anime: anime,);
            }));
          },
          child: Container(
            color: Colors.transparent,
            margin: const EdgeInsets.all(1.0),
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    children: <Widget>[
                      Expanded(child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          anime.imagePoster,
                          fit: BoxFit.cover,
                        ),
                      )),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                            anime.movieName,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Roboto-Bold',
                              fontSize: 12,
                              color: Colors.deepPurpleAccent,
                            )
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
        );
      }).toList(),
    );
  }
}