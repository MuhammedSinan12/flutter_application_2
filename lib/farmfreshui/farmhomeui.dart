import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const FarmUi(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    // darkTheme: ThemeData.dark(),
  ));
}

class FarmUi extends StatefulWidget {
  const FarmUi({super.key});

  @override
  State<FarmUi> createState() => _FarmUiState();
}

class _FarmUiState extends State<FarmUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Farmers Fresh Zone'.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            actions: [
              Row(
                children: const [
                  Icon(Icons.location_on_outlined),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Kochi"),
                  Icon(Icons.arrow_drop_down),
                  SizedBox(
                    width: 15,
                  )
                ],
              )
            ],
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 15.0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search_outlined),
                          hintText: 'Search for vegetables and fruits..',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilterChip(
                    label: const Text('VEGETABLES',
                        style: TextStyle(color: Colors.green)),
                    backgroundColor: Colors.greenAccent[100],
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    label: const Text('FRUITS',
                        style: TextStyle(color: Colors.green)),
                    backgroundColor: Colors.greenAccent[100],
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    label: const Text('EXOTIC',
                        style: TextStyle(color: Colors.green)),
                    backgroundColor: Colors.greenAccent[100],
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    label: const Text(
                      'FRESH CUT',
                      style: TextStyle(color: Colors.green),
                    ),
                    backgroundColor: Colors.greenAccent[100],
                    onSelected: (value) {},
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Image.network(
                'https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80'),
            const SizedBox(
              height: 10.0,
            ),
          ]))
        ],
      ),
    );
  }
}
