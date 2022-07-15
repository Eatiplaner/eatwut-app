import 'package:eatiplan_mobile/shared/widgets/forms/input/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

String? Function(dynamic valueCandidate) validator = (valueCandidate) {
  if (valueCandidate?.isEmpty ?? true) {
    return 'This field is required.';
  }
  return null;
};

Story get formInputStory => Story(
    name: 'Form/Input',
    description: 'Form Input Component',
    builder: (context) => FormBuilder(
            child: Column(children: [
          FormInput(
            name: 'name',
            validator: validator,
          )
        ])));
