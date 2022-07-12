import 'package:eatiplan_mobile/mix-components/sample/storybook.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class StoryBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(
        stories: [sampleStory],
      );
}
