import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class EIconButton extends StatelessWidget {
  const EIconButton(
      {Key? key,
      required this.icon,
      this.height = double.infinity,
      this.width = double.infinity,
      required this.onPressed})
      : super(key: key);
  final Icon icon;
  final double height;
  final double width;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.center,
      child: ButtonTheme(
          minWidth: double.infinity,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: primaryColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10), // <-- Radius
          ),
          child: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            enableFeedback: false,
            icon: icon,
            onPressed: onPressed,
          )),
    );
  }
}

Story get buttonStory => Story(
    name: 'Button',
    builder: (context) => Column(
          children: [
            EIconButton(
              icon: const Icon(Icons.abc),
              height: 40,
              width: 40,
              onPressed: () {},
            )
          ],
        ));
