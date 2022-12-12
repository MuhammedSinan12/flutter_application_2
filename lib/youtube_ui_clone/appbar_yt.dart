import 'package:flutter/material.dart';
import 'package:flutter_application_2/youtube_ui_clone/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const Appbaryt(),
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark(),
  ));
}

class Appbaryt extends StatefulWidget {
  const Appbaryt({super.key});

  @override
  State<Appbaryt> createState() => _AppbarytState();
}

class _AppbarytState extends State<Appbaryt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'assets/images/YouTube_logo_(2017).png',
          ),
          actions: [
            const SizedBox(
              width: 0.5,
            ),
            IconButton(
              icon: const Icon(Icons.cast),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notification_add_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            const CircleAvatar()
          ],
        ),
        body: const Video_Home(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.video_collection), label: 'Shorts'),
            BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                    ),
                    CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.black.withOpacity(.8),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.library_add_check), label: 'Library'),
          ],
        ));
  }
}
