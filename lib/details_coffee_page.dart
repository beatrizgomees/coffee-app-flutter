import 'package:coffeeapp/design/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsCoffeePage extends StatefulWidget {
  DetailsCoffeePage({super.key});

  @override
  State<DetailsCoffeePage> createState() => _DetailsCoffeePageState();
}

class _DetailsCoffeePageState extends State<DetailsCoffeePage> {
  int qtd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.insideAppBackgroundColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(35, 25, 26, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 40,
                      left: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Details",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: AppThemes.insideAppBackgroundColor,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    border: Border.all(color: AppThemes.principalColor),
                  ),
                  child: Image.asset(
                    "assets/images/coffee03.png",
                    width: 400,
                    height: 400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -250,
            bottom: 20,
            left: 40,
            child: Container(
              decoration: BoxDecoration(
                color: AppThemes.insideAppBackgroundColor,
                border: Border.all(
                  color: AppThemes.principalColor, // Cor da borda
                  width: 2.0, // Largura da borda
                ),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/leite.png",
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 300,
            left: 45,
            child: Text(
              "Milk",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: -100,
            bottom: 2,
            child: Container(
              decoration: BoxDecoration(
                color: AppThemes.insideAppBackgroundColor,
                border: Border.all(
                  color: AppThemes.principalColor, // Cor da borda
                  width: 2.0, // Largura da borda
                ),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/coffee-break.png",
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 380,
            left: 170,
            child: Text(
              "Coffee",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: -250,
            bottom: 20,
            right: 40,
            child: Container(
              decoration: BoxDecoration(
                color: AppThemes.insideAppBackgroundColor,
                border: Border.all(
                  color: AppThemes.principalColor, // Cor da borda
                  width: 2.0, // Largura da borda
                ),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/expresso.png",
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 295,
            right: 25,
            child: Text(
              "Expresso",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: 420,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cappucino",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(width: 152),
                Text(
                  "\$ 25.40",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ],
            ),
          ),
          Positioned(
            top: 470,
            left: 20,
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              child: Text(
                  textAlign: TextAlign.justify,
                  style: TextStyle(),
                  "A cappuccino is an Italian coffee drink made with espresso, steamed milk, and milk foam. It has a rich espresso flavor with a creamy texture. Cappuccinos are usually served in small cups and are enjoyed throughout the day, especially in the morning in Italy."),
            ),
          ),
          Positioned(
            top: 580,
            left: 20,
            child: Text(
              "Size",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: 620,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: 100,
                    child: Center(
                      child: Text(
                        "P",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Color.fromRGBO(35, 25, 26, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: 100,
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Color.fromRGBO(35, 25, 26, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: 100,
                    child: Center(
                      child: Text(
                        "G",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Color.fromRGBO(35, 25, 26, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 680,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Volume: 310",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 130,
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.add_circle),
                        ),
                        onTap: () {
                          setState(() {
                            qtd = qtd + 1;
                          });
                        },
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Center(child: Text("${qtd}")),
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.remove_circle),
                        ),
                        onTap: () {
                          setState(() {
                            qtd = qtd - 1;
                            if (qtd <= -1) {
                              qtd = 0;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 740,
            right: 10,
            left: 20,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color.fromRGBO(245, 161, 52, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 10),
                      backgroundColor: Color.fromRGBO(245, 161, 52, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.monetization_on_rounded,
                        color: Colors.white),
                    label: Text(
                      "Buy now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
