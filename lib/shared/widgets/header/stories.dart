import 'package:eatiplan_mobile/shared/widgets/header/main.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Story get headerStory => Story(
      name: 'Header',
      builder: (context) => Column(children: [
        EHeader(
            title: const Text(
              'Title',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            actionTitle: context.knobs.nullable
                .text(label: 'actionTitle', initial: 'Save'),
            navigateIcon: context.knobs.nullable.options(
              label: 'navigateIcon',
              initial: const Icon(Icons.arrow_back),
              options: const [
                Option(
                  label: 'Arrow Back',
                  value: Icon(Icons.arrow_back),
                ),
              ],
            ))
      ]),
    );
