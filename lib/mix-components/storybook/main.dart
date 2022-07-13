import 'package:eatiplan_mobile/mix-components/buttons/mode_toggle_button/storybook.dart';
import 'package:eatiplan_mobile/mix-components/sample/storybook.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class StoryBook extends StatelessWidget {
  const StoryBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Storybook(
        stories: [sampleStory, modeToggleButtonStory],
      );
}
