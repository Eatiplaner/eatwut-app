import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../textfield/textfield/main.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    Key? key,
    this.placeholder = "",
    this.icon,
    this.value = "",
    this.onChange,
    this.isError = false,
    this.label,
    required this.validator,
    required this.name,
    this.validateMode = AutovalidateMode.always,
  }) : super(key: key);

  final String placeholder;
  final IconData? icon;
  final String value;
  final ValueChanged<String>? onChange;
  final String? label;
  final bool isError;
  final String? Function(String?) validator;
  final String name;
  final AutovalidateMode? validateMode;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String?>(
      name: name,
      onChanged: (val) => debugPrint(val.toString()),
      builder: (FormFieldState field) {
        return CupertinoFormRow(
          error: field.errorText != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    field.errorText!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: errorColor,
                    ),
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
                isError: isError,
                placeholder: placeholder,
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
