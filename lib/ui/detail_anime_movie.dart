import 'package:anime_ku/model/anime_movie.dart';
import 'package:flutter/material.dart';

class DetailAnimeMovie extends StatefulWidget {

  final AnimeMovie anime;

  const DetailAnimeMovie({super.key, required this.anime});

  @override
  _DetailAnimeMovie createState() => _DetailAnimeMovie(anime);
}

class _DetailAnimeMovie extends State<DetailAnimeMovie> {

  final AnimeMovie anime;

  var robotoRegular = const TextStyle(fontFamily: 'Roboto-Regular');
  var robotoBold = const TextStyle(fontFamily: 'Roboto-Bold');

  _DetailAnimeMovie(this.anime);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return DetailAnimeMoviesMobilePage(anime: anime);
          } else {
            return DetailAnimeMovieWebPage(anime: anime);
          }
        },
      ),
    );
  }
}


class DetailAnimeMoviesMobilePage extends StatelessWidget {

  final AnimeMovie anime;

  const DetailAnimeMoviesMobilePage({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                    children: [
                      Center(
                          child: SizedBox(
                            width: 450,
                            height: 400,
                            child: Image.asset(
                              anime.imagePoster,
                              fit: BoxFit.cover,
                            ),
                          )
                      ),
                      const FavoriteButton(),
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.blueGrey,
                                blurRadius: 4,
                                offset: Offset(4, 8),
                              )
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(Icons.access_time, color: Colors.lightGreen),
                                  SizedBox(height: 4.0),
                                  Text(
                                    anime.runTime,
                                    style: const TextStyle(fontFamily: 'Roboto-Bold', fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.yellow),
                                  SizedBox(height: 4.0),
                                  Text(
                                    anime.rating,
                                    style: const TextStyle(fontFamily: 'Roboto-Bold', fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.language, color: Colors.lightGreen),
                                  SizedBox(height: 4.0),
                                  Text(
                                    anime.originalLanguage,
                                    style: const TextStyle(fontFamily: 'Roboto-Bold', fontSize: 14, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: anime.imageAssets.map((imageAsset) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(imageAsset),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    'Synopsis',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: 20,
                                        color: Colors.deepPurpleAccent
                                    )
                                )
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(anime.synopsis, style:
                                TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black
                                )
                                )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'Movie Info',
                              style: TextStyle(
                                  fontFamily: 'Roboto-Bold',
                                  fontSize: 20,
                                  color: Colors.deepPurpleAccent
                              )
                          )
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text('Released Date: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.releasedDate, style: const TextStyle(fontFamily: 'Sansita'))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Genre: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.genre, style: const TextStyle(fontFamily: 'Sansita', color: Colors.teal))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Director: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.director, style: const TextStyle(fontFamily: 'Sansita'))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Producer: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.producer, style: const TextStyle(fontFamily: 'Sansita'))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Screen Writer: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.screenWriter, style: const TextStyle(fontFamily: 'Sansita'))
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Production Co: ',
                                  style: TextStyle(
                                    fontFamily: 'Sansita-Regular',
                                  ),
                                ),
                                Expanded(child: Text(anime.productionCo, style: const TextStyle(fontFamily: 'Sansita')))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

class DetailAnimeMovieWebPage extends StatelessWidget {
  final AnimeMovie anime;
  const DetailAnimeMovieWebPage({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                    children: [
                      Center(
                          child: SizedBox(
                            width: 450,
                            height: 400,
                            child: Image.asset(
                              anime.imagePoster,
                              fit: BoxFit.cover,
                            ),
                          )
                      ),
                      const FavoriteButton(),
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.blueGrey,
                                blurRadius: 4,
                                offset: Offset(4, 8),
                              )
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(Icons.access_time, color: Colors.lightGreen),
                                  SizedBox(height: 4.0),
                                  Text(
                                    anime.runTime,
                                    style: const TextStyle(fontFamily: 'Roboto-Bold', fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.yellow),
                                  SizedBox(height: 4.0),
                                  Text(
                                    anime.rating,
                                    style: const TextStyle(fontFamily: 'Roboto-Bold', fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.language, color: Colors.lightGreen),
                                  SizedBox(height: 4.0),
                                  Text(
                                    anime.originalLanguage,
                                    style: const TextStyle(fontFamily: 'Roboto-Bold', fontSize: 14, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: anime.imageAssets.map((imageAsset) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(imageAsset),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    'Synopsis',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: 20,
                                        color: Colors.deepPurpleAccent
                                    )
                                )
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(anime.synopsis, style:
                                TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black
                                )
                                )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'Movie Info',
                              style: TextStyle(
                                  fontFamily: 'Roboto-Bold',
                                  fontSize: 20,
                                  color: Colors.deepPurpleAccent
                              )
                          )
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text('Released Date: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.releasedDate, style: const TextStyle(fontFamily: 'Sansita'))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Genre: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.genre, style: const TextStyle(fontFamily: 'Sansita', color: Colors.teal))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Director: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.director, style: const TextStyle(fontFamily: 'Sansita'))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Producer: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.producer, style: const TextStyle(fontFamily: 'Sansita'))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Screen Writer: ', style: TextStyle(fontFamily: 'Sansita-Regular'),),
                                Text(anime.screenWriter, style: const TextStyle(fontFamily: 'Sansita'))
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Production Co: ',
                                  style: TextStyle(
                                    fontFamily: 'Sansita-Regular',
                                  ),
                                ),
                                Expanded(child: Text(anime.productionCo, style: const TextStyle(fontFamily: 'Sansita')))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}): super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      setState(() {
        isFavorite = !isFavorite;

      });
    }, icon: Icon(
      isFavorite ? Icons.favorite : Icons.favorite_border,
      color: Colors.red,
    ));
  }
}

