import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ETextfield extends StatefulWidget {
  const ETextfield(
      {Key? key,
      this.placeholder = "",
      this.icon,
      this.value = "",
      this.onChange,
      this.isSecret = false,
      this.isError = false})
      : super(key: key);

  final String placeholder;
  final IconData? icon;
  final String value;
  final ValueChanged<String>? onChange;
  final bool isError;
  final bool isSecret;

  @override
  createState() => _ETextfieldState();
}

class _ETextfieldState extends State<ETextfield> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoTextField(
        obscureText: widget.isSecret ? _obscureText : false,
        placeholder: widget.placeholder,
        placeholderStyle: const TextStyle(
            fontSize: 15, fontFamily: fontFamily, color: primaryColor),
        padding: const EdgeInsets.all(19),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            border: Border.all(
                color: widget.isError ? Colors.redAccent : primaryColor)),
        prefix: widget.icon != null
            ? Container(
                margin: const EdgeInsets.only(left: 15),
                child: Icon(
                  widget.icon,
                  size: 27,
                  color: primaryColor,
                ),
              )
            : null,
        suffix: widget.isSecret
            ? Container(
                margin: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ),
              )
            : null,
        style: const TextStyle(
            color: primaryColor, fontFamily: fontFamily, fontSize: 15),
        onChanged: widget.onChange,
      ),
    );
  }
}
