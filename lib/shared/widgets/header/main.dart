import 'package:eatiplan_mobile/shared/widgets/iconButton/main.dart';
import 'package:flutter/material.dart';

enum ButtonVariant { primary, secondary, danger }

class EHeader extends StatelessWidget {
  const EHeader({
    Key? key,
    required this.title,
    this.actionTitle,
    this.navigateIcon,
    this.onPressedIcon,
    this.onPressedAction,
  }) : super(key: key);

  final String title;
  final String? actionTitle;
  final Icon? navigateIcon;

  final VoidCallback? onPressedAction;
  final VoidCallback? onPressedIcon;

  final heightContainer = 40.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        height: heightContainer,
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
                          onPressed: onPressedAction,
                        ),
                      )
                    : const Text(''),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
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
