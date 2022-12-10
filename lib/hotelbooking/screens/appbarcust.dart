import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
      sliver: SliverAppBar(
        backgroundColor: Colors.transparent,
        leading: Wrap(
          direction: Axis.vertical,
          children: const [
            Text(
              'Hello @Sinan',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            Text(
              'Find Your Favourite Hotel',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1576695444267-40cdd214f06e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=422&q=80'))),
            ),
          )
        ],
      ),
    );
  }
}
