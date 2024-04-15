import 'dart:ui';

import 'package:coffeeapp/components/list_categories_component.dart';
import 'package:coffeeapp/design/themes.dart';
import 'package:coffeeapp/details_coffee_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoffeeCardComponent extends StatelessWidget {
  const CoffeeCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 200,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromRGBO(86, 46, 2, 1).withOpacity(0.8),
                            const Color.fromRGBO(49, 26, 12, 1)
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Cappucino",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              const Text(
                                "Best flavur",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(right: 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "\$ 10.40",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_box_rounded,
                                        size: 40,
                                        color: Color.fromRGBO(201, 150, 84, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/coffee01.png",
                        width: 200,
                        height: 180,
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsCoffeePage()),
        );
      },
    );
  }
}
