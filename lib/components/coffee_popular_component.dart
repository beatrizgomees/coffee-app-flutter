import 'package:flutter/material.dart';

class CoffeePopularComponent extends StatelessWidget {
  const CoffeePopularComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color.fromRGBO(201, 150, 84, 1),
        ),
      ),
    );
  }
}
