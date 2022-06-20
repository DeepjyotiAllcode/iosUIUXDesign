import 'package:flutter/material.dart';
import 'package:flutter_application_2/Ui/design_color.dart';
import 'package:flutter_application_2/Ui/design_text.dart'; 

class DesignButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Icon? icon;
  final Color? color;
  final bool isiconed;
  final Color? textcolor;
  final double? elevation;
  final double? pdLeft;
  final double? pdTop;
  final double? pdRight;
  final double? pdBottom;
  final bool isExpaned;
  const DesignButton({
    required this.onPressed,
    required this.text,
    this.icon,
    this.color,
    this.isiconed = false,
    this.textcolor,
    this.elevation,
    this.pdLeft,
    this.pdTop,
    this.pdRight,
    this.pdBottom,
    this.isExpaned = false,
    Key? key,
  }) : super(key: key);
  const DesignButton.icon({
    required this.onPressed,
    required this.text,
    this.icon,
    this.color,
    this.isiconed = true,
    this.textcolor,
    this.elevation,
    this.pdLeft,
    this.pdTop,
    this.pdRight,
    this.pdBottom,
    this.isExpaned = false,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (!isiconed) {
      if (isExpaned) {
        return Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  onPressed();
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(
                      pdLeft ?? 12, pdTop ?? 12, pdRight ?? 12, pdBottom ?? 12),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                  ),
                  backgroundColor: DesignColor.blueColor,
                ),
                child: DesignText(text: text),
              ),
            ),
          ],
        );
      } else {
        return ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.fromLTRB(
                pdLeft ?? 12, pdTop ?? 12, pdRight ?? 12, pdBottom ?? 12),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
            ),
            backgroundColor: DesignColor.blueColor,
          ),
          child: DesignText(text: text),
        );
      }
    } else {
      return ElevatedButton.icon(
        onPressed: () {
          onPressed();
        },
        icon: icon ?? const Icon(Icons.abc),
        label: DesignText(
          text: text,
          color: textcolor,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.fromLTRB(
              pdLeft ?? 12, pdTop ?? 8, pdRight ?? 12, pdBottom ?? 8),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
              topLeft: Radius.circular(4),
              topRight: Radius.circular(4),
            ),
          ),
          elevation: elevation,
          backgroundColor: DesignColor.googleSign,
        ),
      );
    }
  }
}
