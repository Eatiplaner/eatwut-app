import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum ButtonVariant { primary, secondary, danger }

class EButton extends StatelessWidget {
  const EButton(
      {Key? key,
      required this.label,
      required this.variant,
      this.disabled = false,
      required this.onPressed})
      : super(key: key);

  final String label;
  final ButtonVariant variant;
  final VoidCallback? onPressed;
  final bool disabled;
  @override
  Widget build(BuildContext context) {
    bool isPrimary = variant == ButtonVariant.primary;

    return SizedBox(
        child: ButtonTheme(
            minWidth: double.infinity,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isPrimary ? Colors.white : primaryColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),
            child: MaterialButton(
              onPressed: disabled ? null : onPressed,
              disabledColor: Colors.black26,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              enableFeedback: false,
              color: isPrimary ? primaryColor : Colors.white,
              textColor: isPrimary ? Colors.white : primaryColor,
              height: 56,
              child: Text(
                label,
                style: const TextStyle(
                    fontSize: 15,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w700),
              ),
            )));
  }
}

Story get buttonStory => Story(
    name: 'Button',
    builder: (context) => Column(
          children: [
            EButton(
              label: 'Button',
              variant: ButtonVariant.primary,
              onPressed: () {},
            ),
            EButton(
              label: 'Button',
              variant: ButtonVariant.secondary,
              onPressed: () {},
            )
          ],
        ));
