import 'package:flutter/material.dart';
import 'package:flutter_application_2/farmfreshui/veggiecategory.dart';

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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.timer_sharp,
                          color: Colors.blueGrey[300],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text('30 Mins policy'),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.camera_front_rounded,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Traceability")
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.home_work_rounded,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Local Surroundings")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Text(
                "Shop By Category",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Veggies()
          ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: 'Home'.toUpperCase()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart_outlined),
              label: 'Cart'.toUpperCase()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline_rounded),
              label: "Account".toUpperCase())
        ],
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
      ),
    );
  }
}
