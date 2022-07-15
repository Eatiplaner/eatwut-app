import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormInput extends StatelessWidget {
  const FormInput(
      {Key? key,
      this.validator,
      required this.name,
      this.validateMode = AutovalidateMode.always})
      : super(key: key);

  final String? Function(dynamic valueCandidate)? validator;
  final String name;
  final AutovalidateMode? validateMode;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String?>(
      name: name,
      onChanged: (val) => debugPrint(val.toString()),
      builder: (FormFieldState field) {
        return CupertinoFormRow(
          error: field.errorText != null ? Text(field.errorText!) : null,
          child: CupertinoTextField(
            onChanged: (value) => field.didChange(value),
          ),
        );
      },
      autovalidateMode: AutovalidateMode.always,
      validator: validator,
    );
  }
}
