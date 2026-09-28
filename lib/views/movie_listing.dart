import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

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
    children: [
      Text(
        'Naked Gun 4 (2025)',
        style: TextStyle(fontSize: 30),
      ),
      Text(
        'Southsea Cinema Room\nThursday 28th October 2026\n\nPlease note that Discounts / Membership Benefits will be applied once you have selected your tickets\nSelect Quantities (Up to 5 in total)',
        style: TextStyle(fontSize: 16),
      ),
      Text(
        'Tickets',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  ),
    ));
  }


}
