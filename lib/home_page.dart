import 'dart:ui';

import 'package:coffeeapp/components/coffee_card_component.dart';
import 'package:coffeeapp/components/coffee_popular_component.dart';
import 'package:coffeeapp/components/list_categories_component.dart';
import 'package:coffeeapp/components/navigation_bar_component.dart';
import 'package:coffeeapp/design/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 255, 252, 249).withOpacity(0.8),
                const Color.fromARGB(255, 252, 187, 147)
              ],
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Good Morning",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.pin_drop,
                                      color: AppThemes.principalColor,
                                    ),
                                    Text(
                                      "Torres, Recife",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: CircleAvatar(
                                backgroundColor: AppThemes.principalColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 20, top: 120),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 30,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.search,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Find the best coffee for you',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Image.asset(
                                          "assets/images/contexto.png",
                                          width: 20,
                                          height: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 10),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  Flex(
                    direction: Axis.vertical,
                    children: [
                      ConstrainedBox(
                          constraints: const BoxConstraints(minHeight: 30),
                          child: Container(
                              height: 50,
                              child: const ListCategoriesComponent())),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CoffeeCardComponent(),
                          SizedBox(width: 20),
                          CoffeeCardComponent(),
                          SizedBox(width: 20),
                          CoffeeCardComponent(),
                          SizedBox(width: 20),
                          CoffeeCardComponent(),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20),
                    child: Row(
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  CoffeePopularComponent(),
                  CoffeePopularComponent(),
                  CoffeePopularComponent(),
                  CoffeePopularComponent(),
                  CoffeePopularComponent(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavBar(),
          ),
        ),
      ],
    );
  }
}
