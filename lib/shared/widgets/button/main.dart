import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum ButtonVariant { primary, secondary }

class EButton extends StatelessWidget {
  const EButton(
      {Key? key,
      required this.label,
      required this.variant,
      required this.onPressed})
      : super(key: key);

  final String label;
  final ButtonVariant variant;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    bool isPrimary = variant == ButtonVariant.primary;

    return SizedBox(
        child: ButtonTheme(
            minWidth: double.infinity,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isPrimary
                    ? const Color(0xffFFFFFF)
                    : const Color(0xff1A2019),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),
            child: MaterialButton(
              onPressed: onPressed,
              color:
                  isPrimary ? const Color(0xff1A2019) : const Color(0xffFFFFFF),
              textColor:
                  isPrimary ? const Color(0xffFFFFFF) : const Color(0xff1A2019),
              height: 56,
              child: Text(
                label,
                style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
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
