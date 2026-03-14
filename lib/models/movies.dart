class Movie {
  final int     id;
  final String  title;
  final String  overview;
  final double  voteAverage;
  final String? posterPath;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.voteAverage,
    this.posterPath,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id:          json['id']           as int,
      title:       json['title']        as String,
      overview:    json['overview']     as String,
      voteAverage: json['vote_average'] as double,
      posterPath:  json['poster_path']  as String?,
    );
  }

  String get fullPosterUrl {
    const base = 'https://image.tmdb.org/t/p/w500';
    return posterPath != null
        ? '$base$posterPath'
        : 'https://via.placeholder.com/500x750?text=Sin+Imagen';
  }
}
