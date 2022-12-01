import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: HotelDetail(),
    debugShowCheckedModeBanner: false,
  ));
}

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DETAIL",
          style: TextStyle(color: Color.fromARGB(234, 255, 255, 255)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black26, BlendMode.darken),
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1591088398332-8a7791972843?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80"))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Room in Kochi",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const Text(
                      "Kochi,Kerala",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 16.0,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: const Text(
                            "8.4/85 reviews",
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      RatingBar.builder(
                        glow: false,
                        initialRating: 4.3,
                        minRating: 1,
                        itemSize: 32,
                        ignoreGestures: true,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star_outline,
                          color: Colors.amberAccent,
                        ),
                        onRatingUpdate: (rating) {},
                        allowHalfRating: true,
                        itemCount: 5,
                        direction: Axis.horizontal,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text.rich(
                        TextSpan(children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.location_on_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: "8 km to Decathlon",
                          ),
                        ]),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "\$ 200",
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      Text(
                        "/per night",
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width / 1.1,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Text("Book Now"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "DESCRIPTION",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The rooms come with air conditioning, a flat-screen TV with satellite channels, an electric tea pot, a shower, free toiletries and a desk. At the hotel rooms have a private bathroom and bed linen.Treebo Trend Pushpak Service Apartment offers a continental or à la carte breakfast.Vembanad Lake is 49.9 km from the accommodation, while Cochin Shipyard is 14.8 km from the property. The nearest airport is Cochin International Airport, 37 km from Treebo Trend Pushpak Service Apartment.",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 2,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
