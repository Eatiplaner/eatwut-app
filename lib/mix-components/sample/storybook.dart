import 'package:eatiplan_mobile/mix-components/sample/main.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Story get sampleStory => Story(
    name: 'Mix/Sample',
    description: 'Sample Mix Component',
    builder: (context) => Sample(background: getBackground(context)));

getBackground(BuildContext context) {
  return context.knobs.nullable.options(
    label: 'Background color',
    initial: Colors.green,
    description: 'Background color of the Sample',
    options: const [
      Option(
        label: 'Blue',
        value: Colors.blue,
        description: 'Blue color',
      ),
      Option(
        label: 'Green',
        value: Colors.green,
        description: 'Green color',
      ),
    ],
  );
}
