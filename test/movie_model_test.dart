import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('creates Movie instance with given properties', () {
      const movie = Movie(
        id: 'romance',
        title: 'Love Movie',
        ageRating: '15',
        synopsis: 'Steamy romance in the city.',
        releaseDate: '2025-01-01',
        runTime: '120 min',
        imagePath: 'assets/images/love_movie.jpg',
        price: 12.0,
      );

      expect(movie.id, 'romance');
      expect(movie.title, 'Love Movie');
      expect(movie.ageRating, '15');
      expect(movie.synopsis, 'Steamy romance in the city.');
      expect(movie.releaseDate, '2025-01-01');
      expect(movie.runTime, '120 min');
      expect(movie.imagePath, 'assets/images/love_movie.jpg');
      expect(movie.price, 12.0);
    });

    test(
        'formattedPrice returns price prefixed with pound sign and two decimals',
        () {
      const movie = Movie(
        id: 'biopic',
        title: 'Oscars Life',
        ageRating: 'PG',
        synopsis: 'His unique life story.',
        releaseDate: '2006-05-30',
        runTime: '800 min',
        imagePath: 'assets/images/biopic_movie.jpg',
        price: 19.5,
      );

      expect(movie.formattedPrice, '£19.50');
    });

    test('isChildFriendly returns true for U movies', () {
      const movie = Movie(
        id: 'kids-movie',
        title: 'Cocomelon Movie',
        ageRating: 'U',
        synopsis: 'Family friendly fun',
        releaseDate: '2025-01-01',
        runTime: '40 min',
        imagePath: 'assets/images/kids_movie.jpg',
        price: 9.0,
      );

      expect(movie.isChildFriendly, true);
    });

    test('isAdultOnly returns true for 18-rated movies', () {
      const movie = Movie(
        id: 'murder-movie',
        title: 'Blood and Guts',
        ageRating: '18',
        synopsis: 'Lots of people die gruesomly',
        releaseDate: '2025-01-01',
        runTime: '313 min',
        imagePath: 'assets/images/murder_movie.jpg',
        price: 13.13,
      );

      expect(movie.isAdultOnly, true);
    });
  });
}
