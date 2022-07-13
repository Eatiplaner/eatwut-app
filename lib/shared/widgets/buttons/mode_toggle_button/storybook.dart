import 'package:eatiplan_mobile/provider/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ModelToggleDemo extends StatelessWidget {
  const ModelToggleDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Mode Toggle Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false).toggleMode();
              },
              child: const Text('Toggle Mode'))
        ],
      ),
    );
  }
}

Story get modeToggleButtonStory => Story(
    name: 'Toggle Mode Demo', builder: (context) => const ModelToggleDemo());
