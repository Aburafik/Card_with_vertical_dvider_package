library card_vertical_divider;

import 'package:flutter/material.dart';

class CardVerticalDivider extends StatelessWidget {
  const CardVerticalDivider({
    super.key,
    this.dividerThickness,
    this.cardColor,
    this.dividerColor,
    this.cardHeight,
    this.title,
    this.content,
    this.titleStyle,
    this.contentStyle,
    this.child,
    this.cricleBackgroungColor,
  });

  ///Change the thickness of the divider,the default is the default vertical thickness of the divider
  final double? dividerThickness;

  ///Change the color of the Card, the default color is Colors.red
  final Color? cardColor;

  ///Change the color of the vertical divider, the default color is the Material is Colors.white
  final Color? dividerColor;

  ///Chage the height of the Card, the default height is [MediaQuery.of(context).size.height / 3,]
  final double? cardHeight;

  ///Give a title of the card,
  final String? title;

  ///Give a content of the card in details,
  final String? content;

  ///Style the title of the title, the default style is the [Material TextStyle]
  final TextStyle? titleStyle;

  ///Style the content of the titleContent, the default style is the [Material TextStyle]
  final TextStyle? contentStyle;

  ///Pass a child to the circleAvater,
  final Widget? child;

  ///Change the background color of the circleAvater, the default color is the material background color
  final Color? cricleBackgroungColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cardHeight ?? MediaQuery.of(context).size.height / 3,
      child: Card(
        color: cardColor ?? Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: cricleBackgroungColor,
                    child: child,
                  ),
                  Expanded(
                    child: VerticalDivider(
                      thickness: dividerThickness,

                      color: dividerColor ?? Colors.white,
                      indent: 1,
                      // endIndent: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        title ?? "",
                        style: titleStyle,
                      ),
                    ),
                    Expanded(
                        child: Text(
                      content ?? "",
                      style: contentStyle,
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
