import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/models/movie.dart';

class MovieListing extends StatefulWidget {
  final Movie movie;
  const MovieListing({super.key, required this.movie});
  @override
  State<MovieListing> createState() => _MovieListingState();
}

Color buttonColour = Colors.white;
String buttonText = 'Add To Order';

class _MovieListingState extends State<MovieListing> {
  int selectedTickets = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(appTitle, style: cinemaHeaderStyle),
          backgroundColor: cinemaSurface,
          iconTheme: const IconThemeData(color: cinemaBrand),
          elevation: 0,
        ),
        drawer: const NavDrawer(),
        body: Container(
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.movie.title,
                style: TextStyle(fontSize: 30),
              ),
              Image.asset(widget.movie.imagePath, width: 200)
              ,
              Text(
                'Southsea Cinema Room\nThursday 28th October 2026\n\nPlease note that Discounts / Membership Benefits will be applied once you have selected your tickets\nSelect Quantities (Up to 5 in total)',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Tickets',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  DropdownButton<int>(
                    value: selectedTickets,
                    items: List.generate(
                        6,
                        (index) => DropdownMenuItem<int>(
                              value: index,
                              child: Text(index.toString()),
                            )),
                    onChanged: (int? value) {
                      setState(() {
                        selectedTickets = value!;
                      });
                    },
                  ),
                  Text(
                    'Adult',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonColour = Colors.blueGrey;
                      buttonText = 'Added!';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColour,
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(color: Colors.black),
                  )
                  
                  )
            ],
          ),
        ));
  }
}
