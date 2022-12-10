import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotelbooking/screens/appbarcust.dart';
import 'package:flutter_application_2/hotelbooking/screens/hotelpackages.dart';
import 'package:flutter_application_2/hotelbooking/screens/popularslider.dart';
import 'package:flutter_application_2/hotelbooking/screens/searchtile.dart';
import 'package:flutter_application_2/hotelbooking/screens/titles.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: const HotelUiScrollable(),
  ));
}

class HotelUiScrollable extends StatefulWidget {
  const HotelUiScrollable({super.key});

  @override
  State<HotelUiScrollable> createState() => _HotelUiScrollableState();
}

class _HotelUiScrollableState extends State<HotelUiScrollable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.90),
      body: CustomScrollView(
        slivers: [
          const MyAppbar(),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 25,
            ),
            const SearchBAr(),
            const SizedBox(
              height: 20,
            ),
            const Titless(title: 'Popular Hotels'),
            const SizedBox(
              height: 10,
            ),
            const PopularHotels(),
            const SizedBox(
              height: 10,
            ),
            const Titless(
              title: 'HotelPackages',
              button: true,
              buttonText: 'View all',
            ),
            const SizedBox(
              height: 10,
            ),
            const Hotelss()
          ]))
        ],
      ),
    );
  }
}
