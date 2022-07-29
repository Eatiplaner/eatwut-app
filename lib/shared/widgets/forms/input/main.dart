import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../textfield/main.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    Key? key,
    this.placeholder = "",
    this.icon,
    this.value = "",
    this.onChange,
    this.isError = false,
    this.isSecrect = false,
    this.label,
    this.validator,
    this.textInputAction = TextInputAction.next,
    required this.name,
    this.validateMode = AutovalidateMode.always,
  }) : super(key: key);

  final String placeholder;
  final IconData? icon;
  final String value;
  final ValueChanged<String>? onChange;
  final String? label;
  final bool isError;
  final bool isSecrect;
  final String? Function(String?)? validator;
  final String name;
  final AutovalidateMode? validateMode;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String?>(
      name: name,
      onChanged: (val) => debugPrint(val.toString()),
      builder: (FormFieldState field) {
        return CupertinoFormRow(
          padding: const EdgeInsets.all(0),
          error: field.errorText != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.warning,
                        color: Colors.redAccent,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        field.errorText!.tr,
                        style: const TextStyle(
                          fontSize: 12,
                          color: errorColor,
                        ),
                      )
                    ],
                  ),
                )
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  label!,
                  style: const TextStyle(
                    fontSize: 15,
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ETextfield(
                icon: icon,
                isSecret: isSecrect,
                isError: field.hasError || isError,
                placeholder: placeholder,
                textInputAction: textInputAction,
                onChange: (String? text) {
                  field.didChange(text);
                  if (onChange != null) {
                    onChange!(text!);
                  }
                },
              ),
            ],
          ),
        );
      },
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
