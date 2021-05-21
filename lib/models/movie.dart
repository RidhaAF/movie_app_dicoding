class Movie {
  final int id, year, criticsReview, metascoreRating;
  final double rating;
  final List<String> genre;
  final String plot, title, poster, backdrop, numOfRatings, rate, duration;
  final List<Map> cast;

  Movie({
    this.poster,
    this.backdrop,
    this.title,
    this.id,
    this.year,
    this.rate,
    this.duration,
    this.numOfRatings,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.genre,
    this.plot,
    this.cast,
  });
}

List<Movie> movies = [
  Movie(
    id: 1,
    title: 'Inception',
    year: 2010,
    rate: 'PG-13',
    duration: '2h 28min',
    poster: 'assets/images/poster_1.jpg',
    backdrop: 'assets/images/backdrop_1.jpg',
    numOfRatings: '2.1M',
    rating: 8.8,
    criticsReview: 478,
    metascoreRating: 74,
    genre: ['Action', 'Adventure', 'Sci-Fi'],
    plot:
        'Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: “inception”, the implantation of another person’s idea into a target’s subconscious.',
    cast: [
      {
        'orginalName': 'Leonardo DiCaprio',
        'movieName': 'Dom Cobb',
        'image': 'assets/images/actor_1.png',
      },
      {
        'orginalName': 'Joseph Gordon-Levitt',
        'movieName': 'Arthur',
        'image': 'assets/images/actor_2.png',
      },
      {
        'orginalName': 'Elliot Page',
        'movieName': 'Ariadne',
        'image': 'assets/images/actor_3.png',
      },
      {
        'orginalName': 'Tom Hardy',
        'movieName': 'Eames',
        'image': 'assets/images/actor_4.png',
      },
      {
        'orginalName': 'Ken Watanabe',
        'movieName': 'Mr. Saito',
        'image': 'assets/images/actor_5.png',
      },
      {
        'orginalName': 'Cillian Murphy',
        'movieName': 'Robert Fischer',
        'image': 'assets/images/actor_6.png',
      },
    ],
  ),
  Movie(
    id: 2,
    title: 'Interstellar',
    year: 2014,
    rate: 'PG-13',
    duration: '2h 49min',
    poster: 'assets/images/poster_2.jpg',
    backdrop: 'assets/images/backdrop_2.jpg',
    numOfRatings: '1.6M',
    rating: 8.6,
    criticsReview: 632,
    metascoreRating: 74,
    genre: ['Adventure', 'Drama', 'Sci-Fi'],
    plot:
        'Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.',
    cast: [
      {
        'orginalName': 'Matthew McConaughey',
        'movieName': 'Cooper',
        'image': 'assets/images/actor_7.png',
      },
      {
        'orginalName': 'Jessica Chastain',
        'movieName': 'Murph',
        'image': 'assets/images/actor_8.png',
      },
      {
        'orginalName': 'Anne Hathaway',
        'movieName': 'Dr. Brand',
        'image': 'assets/images/actor_9.png',
      },
      {
        'orginalName': 'Michael Caine',
        'movieName': 'Prof. Brand',
        'image': 'assets/images/actor_10.png',
      },
    ],
  ),
  Movie(
    id: 3,
    title: 'Drive',
    year: 2011,
    rate: 'R',
    duration: '1h 40min',
    poster: 'assets/images/poster_3.jpg',
    backdrop: 'assets/images/backdrop_3.jpg',
    numOfRatings: '582K',
    rating: 7.8,
    criticsReview: 715,
    metascoreRating: 78,
    genre: ['Crime', 'Drama'],
    plot:
        "Driver is a skilled Hollywood stuntman who moonlights as a getaway driver for criminals. Though he projects an icy exterior, lately he's been warming up to a pretty neighbor named Irene and her young son, Benicio. When Irene's husband gets out of jail, he enlists Driver's help in a million-dollar heist. The job goes horribly wrong, and Driver must risk his life to protect Irene and Benicio from the vengeful masterminds behind the robbery.",
    cast: [
      {
        'orginalName': 'Ryan Gosling',
        'movieName': 'Driver',
        'image': 'assets/images/actor_11.png',
      },
      {
        'orginalName': 'Carey Mulligan',
        'movieName': 'Irene',
        'image': 'assets/images/actor_12.png',
      },
      {
        'orginalName': 'Bryan Cranston',
        'movieName': 'Shannon',
        'image': 'assets/images/actor_13.png',
      },
      {
        'orginalName': 'Albert Brooks',
        'movieName': 'Bernie Rose',
        'image': 'assets/images/actor_14.png',
      },
      {
        'orginalName': 'Oscar Isaac',
        'movieName': 'Standard',
        'image': 'assets/images/actor_15.png',
      },
    ],
  ),
  Movie(
    id: 4,
    title: 'The Da Vinci Code',
    year: 2006,
    rate: 'PG-13',
    duration: '2h 29min',
    poster: 'assets/images/poster_4.jpg',
    backdrop: 'assets/images/backdrop_4.jpg',
    numOfRatings: '407K',
    rating: 6.6,
    criticsReview: 307,
    metascoreRating: 46,
    genre: ['Mystery', 'Thriller'],
    plot:
        'A murder in Paris’ Louvre Museum and cryptic clues in some of Leonardo da Vinci’s most famous paintings lead to the discovery of a religious mystery. For 2,000 years a secret society closely guards information that — should it come to light — could rock the very foundations of Christianity.',
    cast: [
      {
        'orginalName': 'Tom Hanks',
        'movieName': 'Prof. Langdon',
        'image': 'assets/images/actor_16.png',
      },
      {
        'orginalName': 'Audrey Tautou',
        'movieName': 'Sophie Neveu',
        'image': 'assets/images/actor_17.png',
      },
      {
        'orginalName': 'Ian McKellen',
        'movieName': 'Sir Leigh Teabing',
        'image': 'assets/images/actor_18.png',
      },
      {
        'orginalName': 'Paul Bettany',
        'movieName': 'Silas',
        'image': 'assets/images/actor_19.png',
      },
    ],
  ),
  Movie(
    id: 5,
    title: 'Doctor Strange',
    year: 2016,
    rate: 'PG-13',
    duration: '1h 55min',
    poster: 'assets/images/poster_5.jpg',
    backdrop: 'assets/images/backdrop_5.jpg',
    numOfRatings: '618K',
    rating: 7.5,
    criticsReview: 486,
    metascoreRating: 72,
    genre: ['Action', 'Adventure', 'Fantasy'],
    plot:
        'After his career is destroyed, a brilliant but arrogant surgeon gets a new lease on life when a sorcerer takes him under her wing and trains him to defend the world against evil.',
    cast: [
      {
        'orginalName': 'Benedict Cumberbatch',
        'movieName': 'Dr. Stephen Strange',
        'image': 'assets/images/actor_20.png',
      },
      {
        'orginalName': 'Chiwetel Ejiofor',
        'movieName': 'Mordo',
        'image': 'assets/images/actor_21.png',
      },
      {
        'orginalName': 'Rachel McAdams',
        'movieName': 'Dr. Christine Palmer',
        'image': 'assets/images/actor_22.png',
      },
      {
        'orginalName': 'Benedict Wong',
        'movieName': 'Wong',
        'image': 'assets/images/actor_23.png',
      },
      {
        'orginalName': 'Mads Mikkelsen',
        'movieName': 'Kaecilius',
        'image': 'assets/images/actor_24.png',
      },
      {
        'orginalName': 'Tilda Swinton',
        'movieName': 'The Ancient One',
        'image': 'assets/images/actor_25.png',
      },
    ],
  ),
];

String plotText =
    'American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.';
