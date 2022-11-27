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
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: TabBar(
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
            ),
            body: TabBarView(children: [
              ListView.separated(
                  itemBuilder: (context, index) {
                    return BlogTile(index: index);
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
}

class BlogTile extends StatelessWidget {
  final int index;
  const BlogTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map article = articles[index];
    return SizedBox(
      child: Stack(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.015,
            // width: MediaQuery.of(context).size.width * 0.25,
            height: 100,
            width: 100,
            color: Colors.blueGrey[100],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1520454974749-611b7248ffdb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                    )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        article['title'],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(children: [
                          const WidgetSpan(
                              child: CircleAvatar(
                            radius: 15,
                          )),
                          const WidgetSpan(
                              child: SizedBox(
                            width: 10,
                          )),
                          TextSpan(text: article['author']),
                          const WidgetSpan(
                              child: SizedBox(
                            width: 20,
                          )),
                          TextSpan(text: article['time'])
                        ]),
                      )
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BlogUI(),
  ));
}
