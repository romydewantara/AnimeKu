class AnimeMovie {
  String movieName;
  String synopsis;
  String director;
  String producer;
  String screenWriter;
  String productionCo;
  String genre;
  String releasedDate;
  String runTime;
  String originalLanguage;
  String rating;
  String imagePoster;
  List<String> imageAssets;

  AnimeMovie({
    required this.movieName,
    required this.synopsis,
    required this.director,
    required this.producer,
    required this.screenWriter,
    required this.productionCo,
    required this.genre,
    required this.releasedDate,
    required this.runTime,
    required this.originalLanguage,
    required this.rating,
    required this.imagePoster,
    required this.imageAssets
  });
}

var animeMovieList = [
  AnimeMovie(
      movieName: "The Tale of The Princess Kaguya",
      synopsis: 'A tiny nymph found inside a bamboo stalk grows into a beautiful and desirable young woman, who orders her suitors to prove their love by completing a series of near-impossible tasks.',
      director: 'Isao Takahata',
      producer: 'Yoshiaki Nishimura',
      screenWriter: 'Isao Takahata, Riko Sakaguchi',
      productionCo: 'Studio Ghibli',
      genre: 'Fantasy, Anime',
      releasedDate: 'Oct 17, 2014, Limited',
      runTime: '2h 17m',
      originalLanguage: 'Japanese',
      rating: '4.7/5',
      imagePoster: 'images/TheTaleOfThePrincesKaguya/img-princess-kaguya.png',
      imageAssets: [
        'images/TheTaleOfThePrincesKaguya/pk-pict-one.png',
        'images/TheTaleOfThePrincesKaguya/pk-pict-two.png',
        'images/TheTaleOfThePrincesKaguya/pk-pict-three.png',
        'images/TheTaleOfThePrincesKaguya/pk-pict-four.png'
      ]
  ),
  AnimeMovie(
      movieName: "Your Name",
      synopsis: 'A teenage boy and girl embark on a quest to meet each other for the first time after they magically swap bodies.',
      director: 'Makoto Shinkai',
      producer: 'Noritaka Kawaguchi, Genki Kawamura',
      screenWriter: 'Makoto Shinkai',
      productionCo: 'Toho Company Ltd.',
      genre: 'Fantasy, Romance, Anime',
      releasedDate: 'Apr 7, 2017, Limited',
      runTime: '1h 46m',
      originalLanguage: 'Japanese',
      rating: '4.5/5',
      imagePoster: 'images/YourName/img_your_name.png',
      imageAssets: [
        'images/YourName/yn-pict-one.png',
        'images/YourName/yn-pict-two.png',
        'images/YourName/yn-pict-three.png',
        'images/YourName/yn-pict-four.png'
      ]
  ),
  AnimeMovie(
      movieName: "The Boy and The Heron",
      synopsis: 'From the legendary Studio Ghibli and Academy Award®-winning director Hayao Miyazaki (Spirited Away) comes a new critically-acclaimed fantasy adventure. After losing his mother during the war, young Mahito moves to his family\'s estate in the countryside. There, a series of mysterious events lead him to a secluded and ancient tower, home to a mischievous gray heron. When Mahito\'s new stepmother disappears, he follows the gray heron into the tower, and enters a fantastic world shared by the living and the dead. As he embarks on an epic journey with the heron as his guide, Mahito must uncover the secrets of this world, and the truth about himself.',
      director: 'Hayao Miyazaki',
      producer: 'Toshio Suzuki',
      screenWriter: 'Hayao Miyazaki',
      productionCo: 'Studio Ghibli, Toho Company, Hakuhodo DY Media Partners, Nippon Television Network',
      genre: 'Fantasy, Adventure, Anime',
      releasedDate: 'Dec 8, 2023, Wide',
      runTime: '2h 4m',
      originalLanguage: 'Japanese',
      rating: '5/5',
      imagePoster: 'images/TheBoyAndTheHeron/img_the_boy_and_the_heron.png',
      imageAssets: [
        'images/TheBoyAndTheHeron/tbth-pict-one.png',
        'images/TheBoyAndTheHeron/tbth-pict-two.png',
        'images/TheBoyAndTheHeron/tbth-pict-three.png',
        'images/TheBoyAndTheHeron/tbth-pict-four.png'
      ]
  ),
  AnimeMovie(
      movieName: "Tokyo Godfathers",
      synopsis: 'Middle-aged alcoholic Gin (Toru Emori), teenage runaway Miyuki (Aya Okamoto) and former drag queen Hana (Yoshiaki Umegaki) are a trio of homeless people surviving as a makeshift family on the streets of Tokyo. While rummaging in the trash for food on Christmas Eve, they stumble upon an abandoned newborn baby in a trash bin. With only a handful of clues to the baby\'s identity, the three misfits search the streets of Tokyo for help in returning the baby to its parents.',
      director: 'Satoshi Kon',
      producer: 'Masao Maruyama',
      screenWriter: 'Satoshi Kon',
      productionCo: 'Mad House Company Ltd.',
      genre: 'Comedy, Drama, Anime',
      releasedDate: 'Aug 30, 2003, Original',
      runTime: '1h 30m',
      originalLanguage: 'Japanese',
      rating: '5/5',
      imagePoster: 'images/TokyoGodfathers/img_tokyo_godfathers.png',
      imageAssets: [
        'images/TokyoGodfathers/tgf-pict-one.png',
        'images/TokyoGodfathers/tgf-pict-two.png',
        'images/TokyoGodfathers/tgf-pict-three.png'
      ]
  ),
  AnimeMovie(
      movieName: "The Imaginary",
      synopsis: 'Rudger is a boy no one can see, imagined by Amanda to share her thrilling make-believe adventures. But when Rudger, suddenly alone, arrives at The Town of Imaginaries, where forgotten Imaginaries live and find work, he faces a mysterious threat.',
      director: 'Yoshiyuki Momose',
      producer: 'Yoshiyuki Momose',
      screenWriter: 'Yoshiyuki Momose',
      productionCo: 'Studio Ponoc',
      genre: 'Fantasy, Adventure, Anime',
      releasedDate: 'Jun 28, 2024, Limited',
      runTime: '1h 48m',
      originalLanguage: 'Japanese',
      rating: '4.8/5',
      imagePoster: 'images/TheImaginary/img_the_imaginary.png',
      imageAssets: [
        'images/TheImaginary/ti-pict-one.png',
        'images/TheImaginary/ti-pict-two.png',
        'images/TheImaginary/ti-pict-three.png',
        'images/TheImaginary/ti-pict-four.png'
      ]
  ),
];