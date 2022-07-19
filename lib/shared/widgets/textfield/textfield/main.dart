import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';

class ETextfield extends StatelessWidget {
  const ETextfield(
      {Key? key,
      this.placeholder = "",
      this.icon,
      this.value = "",
      this.onChange,
      this.isError = false})
      : super(key: key);

  final String placeholder;
  final IconData? icon;
  final String value;
  final ValueChanged<String>? onChange;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CupertinoTextField(
        placeholder: placeholder,
        placeholderStyle: const TextStyle(
            fontSize: 15, fontFamily: fontFamily, color: primaryColor),
        padding: const EdgeInsets.all(19),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            border: Border.all(color: primaryColor)),
        prefix: icon != null
            ? Container(
                margin: const EdgeInsets.only(left: 15),
                child: Icon(
                  icon,
                  size: 27,
                  color: primaryColor,
                ),
              )
            : null,
        style: const TextStyle(
            color: primaryColor, fontFamily: fontFamily, fontSize: 15),
        onChanged: onChange,
      ),
    );
  }
}
