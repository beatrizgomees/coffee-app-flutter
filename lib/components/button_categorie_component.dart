import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonCategorieComponent extends StatelessWidget {
  ButtonCategorieComponent({super.key, required this.title});

  String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: title == "All" ? 60 : 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            width: 2,
            color: Color.fromRGBO(201, 150, 84, 1),
          ),
          color: title == "All"
              ? Color.fromRGBO(201, 150, 84, 1)
              : Colors.transparent,
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Center(
            child: Text(
              "${title}",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
