import 'package:eatiplan_mobile/shared/widgets/iconButton/main.dart';
import 'package:flutter/material.dart';

class EHeader extends StatelessWidget {
  const EHeader({
    Key? key,
    required this.title,
    this.actionTitle,
    this.navigateIcon,
    this.onPressedIcon,
    this.onPressedAction,
    this.bottomMargin = 34,
  }) : super(key: key);

  final Text title;
  final String? actionTitle;
  final Icon? navigateIcon;
  final double bottomMargin;

  final VoidCallback? onPressedAction;
  final VoidCallback? onPressedIcon;

  final heightContainer = 40.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heightContainer,
        margin: EdgeInsets.only(bottom: bottomMargin, top: 34),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                navigateIcon != null
                    ? Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: EIconButton(
                          icon: navigateIcon!,
                          height: heightContainer,
                          width: heightContainer,
                          onPressed: onPressedIcon,
                        ),
                      )
                    : const Text(''),
                title,
              ],
            ),
            actionTitle != null
                ? TextButton(
                    onPressed: onPressedAction,
                    child: Text(
                      actionTitle!,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.teal),
                    ))
                : const Text('')
          ],
        ));
  }
}
