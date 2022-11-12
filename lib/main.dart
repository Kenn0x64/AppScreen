import 'package:flutter/material.dart';
import 'itmes.dart';
import 'menu_button.dart';
import 'navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromARGB(233, 23, 24, 30),
          body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Flexible(
                  flex: 1,
                  child: IconButton(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                    icon: const Icon(Icons.sort),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                )
              ]),

                   Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: const Text(
                        "Every Bite a",
                        style: TextStyle(
                            fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 5, 0, 15),
                      child: const Text(
                        "Better burger!",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                MenuButton("Burgers"),
                MenuButton("Pasta"),
                MenuButton("Salads"),
                Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings_applications,
                          color: Colors.white,
                        ))),
              ]),
              const SizedBox(
                height: 20,
              ),
              Flexible(child: 
              GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 30.0,
                crossAxisCount: 2,
              children: [
              Item("assets/Burger1.png", "Beef Burger", "Onion With Cheese",
                  "\$18.00"),
              Item("assets/Burger2.png", "Chicken Burger",
                  "Cheese With Chicken", "\$12.00"),
              Item("assets/Burger3.png", "Classic Burger", "Beef With lattice",
                  "\$12.00"),
              Item("assets/Burger4.png", "Grilld  Burger", "Grilld Chicken",
                  "\$12.00"),
              ],
              )
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BarItem(Icons.mail, Colors.white),
                    BarItem(Icons.favorite, Colors.white),
                    BarItem(Icons.add, Colors.yellow),
                    BarItem(Icons.store, Colors.white),
                    BarItem(Icons.person, Colors.white),
                  ],
                ),
              )
            ],
          )),
      // )
    );
  }
}
