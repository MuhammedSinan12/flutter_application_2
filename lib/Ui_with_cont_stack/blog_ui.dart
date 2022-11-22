import 'package:flutter/material.dart';

import 'listss.dart';

class BlogUI extends StatelessWidget {
  final Color maincolor = const Color.fromARGB(253, 210, 33, 101);
  final Color backcolor = const Color(0xffa9e0e3);
  final Color secondcolor = const Color.fromARGB(255, 69, 96, 124);

  const BlogUI({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: Theme(
          data: ThemeData(
            primaryColor: maincolor,
            appBarTheme: AppBarTheme(
                color: Colors.cyanAccent,
                iconTheme: IconThemeData(color: secondcolor),
                actionsIconTheme: IconThemeData(color: secondcolor),
                toolbarTextStyle: TextTheme(
                  subtitle1: TextStyle(
                      color: secondcolor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ).bodyText2,
                titleTextStyle: TextTheme(
                        subtitle1: TextStyle(
                            color: secondcolor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold))
                    .headline6),
          ),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: const Icon(Icons.category, color: Colors.black),
              title: const Text(
                "Blog Ui",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ))
              ],
              bottom: TabBar(
                  isScrollable: true,
                  labelColor: maincolor,
                  indicatorColor: maincolor,
                  unselectedLabelColor: secondcolor,
                  tabs: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("For You"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Design"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Beauty"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Education"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Entertainment"),
                    ),
                  ]),
            ),
            body: TabBarView(children: [
              ListView.separated(
                  itemBuilder: (context, index) {
                    return _buildArticleItem(index);
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 16.0,
                      ),
                  itemCount: articles.length),
              const Center(
                  child: Text(
                "Tab 2",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              const Center(child: Text("Tab 3")),
              const Center(child: Text("Tab 4")),
              const Center(child: Text("Tab 5")),
            ]),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: 0,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                  BottomNavigationBarItem(icon: Icon(Icons.folder), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_outline), label: ""),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: ""),
                ]),
          ),
        ));
  }

  Widget _buildArticleItem(int index) {
    Map article = articles[index];

    return Container(
      color: Colors.white,
      child: Stack(children: [
        Container(
          width: 90,
          height: 90,
          color: backcolor,
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          child: Row(children: [
            Container(
              height: 100,
              color: Colors.blue,
              width: 80.0,
              child: const Image(
                image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/000/201/215/original/vector-beach-vacations-background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    article["title"],
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: secondcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: CircleAvatar(
                        radius: 15,
                        backgroundColor: maincolor,
                      )),
                      const WidgetSpan(
                          child: SizedBox(
                        width: 5.0,
                      )),
                      TextSpan(
                        text: article["author"],
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const WidgetSpan(
                          child: SizedBox(
                        width: 20.0,
                      )),
                      TextSpan(
                        text: article['time'],
                      )
                    ]),
                    style: const TextStyle(height: 2.0),
                  )
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }
}
