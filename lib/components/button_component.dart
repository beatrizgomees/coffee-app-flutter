import 'package:coffeeapp/design/themes.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  ButtonComponent(
      {super.key,
      required this.color,
      required this.title,
      required this.width,
      required this.heigh,
      this.icon,
      this.sizeIcon,
      required this.onTap});

  Color color;
  String title;
  double width;
  double heigh;
  IconData? icon;
  double? sizeIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          width: width,
          height: heigh,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: AppThemes.principalColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    fontSize: 18,
                    color: color,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(icon, size: sizeIcon, color: color),
                )
              ],
            ),
          ),
        ),
        onTap: onTap);
  }
}
