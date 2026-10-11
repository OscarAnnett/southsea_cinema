//Each card widget recieves and displays the details of one movie object

import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/constants.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cinemaSurface,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
    ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.asset(
              movie.imagePath,
              width: 100,
              height: 140,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                    ),),
                      const SizedBox(height: 8),
                      Text('Age rating: ${movie.ageRating}'),
                      const SizedBox(height: 8),
                    Text(movie.synopsis),
                    ],),),
              ],
            ),
            const SizedBox(height: 16),
          Text('Runtime: ${movie.runTime}'),
            Text('Release date: ${movie.releaseDate}'),
          const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Book Tickets'),
              ),
            ),
          ],
        ),),);}
}
