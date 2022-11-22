import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/profileui/choices.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const ProfileUi2(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.deepPurple),
  ));
}

class ProfileUi2 extends StatelessWidget {
  const ProfileUi2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 100,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
          const SizedBox(
            width: 25,
          ),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: size.width * 0.1,
                ),
                Image.asset(
                  'assets/images/facebook (1).png',
                  width: 40,
                  height: 40,
                ),
                Image.asset(
                  'assets/images/twitter.png',
                  width: 40,
                  height: 40,
                ),
                Image.asset(
                  'assets/images/github.png',
                  width: 40,
                  height: 40,
                ),
                Image.asset(
                  'assets/images/linkedin.png',
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.045,
          ),
          const Center(
            child: Text(
              'Ameer Suhail',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Text(
              '@amiirsuhail',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Center(
            child: Text(
              'Interior Designer',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) {
              return SizedBox(
                height: size.height * 0.02,
              );
            },
            itemCount: choicess.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.cyan.withOpacity(0.05)),
                child: ListTile(
                  leading: choicess[index][0],
                  title: Text(
                    choicess[index][1],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.black,
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
