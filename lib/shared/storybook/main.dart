import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/buttons/mode_toggle_button/stories.dart';
import 'package:eatiplan_mobile/shared/widgets/forms/input/stories.dart';
import 'package:eatiplan_mobile/shared/widgets/sample/stories.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:eatiplan_mobile/shared/widgets/radio/main.dart';

class StoryBook extends StatelessWidget {
  const StoryBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Storybook(
        stories: [
          sampleStory,
          modeToggleButtonStory,
          formInputStory,
          buttonStory,
          radioStory
        ],
      );
}
