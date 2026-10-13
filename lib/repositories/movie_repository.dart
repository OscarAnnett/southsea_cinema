import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {     //Repositories store my data which is better than hardcoding it into the UI for maintainability reasons
  List<Movie> getMovies(){  //Returns a list with multiple movie objects
    return const [
      Movie(
        id: 'the-naked-gun-2025',
        title: 'The Naked Gun 4',
        ageRating: '15',
        synopsis: 'Lt. Frank Drebin Jr. must succeed in his fathers footsteps to prevent the closure of Police Squad.',
        releaseDate: '2025-08-01',
        runTime: '85 min',
        imagePath: 'assets/images/The_Naked_Gun_2025.jpg',
        price: 10.00
      ),
      Movie(
        id: 'eyes-wide-shut-1999',
        title: 'Eyes Wide Shut',
       ageRating: '18',
       synopsis: 'A doctors life unravels after he unmasks a secret society.',
       releaseDate: '1999-08-01',
       runTime: '159 min',
       imagePath: 'assets/images/Eyes_Wide_Shut_1999.jpg',
       price: 16.00
),
];
  }
}