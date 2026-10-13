class Movie {
  final String id;
  final String title;
  final String ageRating;
  final String synopsis;
  final String releaseDate;
  final String runTime;
  final String imagePath;
  final double price;

  String get formattedPrice => '£${price.toStringAsFixed(2)}';
  bool get isChildFriendly {
    if (ageRating == 'U' || ageRating == 'PG') {
      return true;} else {
      return false;
    }
  }
  bool get isAdultOnly {
    if (ageRating == '18') {
      return true;} else {
      return false;
    }
  }
  
  const Movie({
    required this.id,
    required this.title,
    required this.ageRating,
    required this.synopsis,
    required this.releaseDate,
    required this.runTime,
    required this.imagePath,
    required this.price,
  });
}