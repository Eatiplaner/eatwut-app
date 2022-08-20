import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class Item {
  String name;
  String value;

  Item({this.name = "", this.value = ""});
}

class ERadio extends HookWidget {
  const ERadio(
      {Key? key,
      this.value = "",
      required this.onChange,
      required this.itemList,
      this.isError = false})
      : super(key: key);

  final List<Item> itemList;
  final String value;
  final ValueChanged<String> onChange;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    var data = useState<String>("");
    return SizedBox(
        child: SizedBox(
      height: itemList.length * 55,
      child: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return radioWidget(
            title: itemList[index].name,
            value: itemList[index].value,
            groupValue: data.value,
            onChanged: (val) {
              data.value = val;
              onChange(val);
            },
          );
        },
      ),
    ));
  }
}

Widget radioWidget({
  required String title,
  required String value,
  required String groupValue,
  required ValueChanged<String> onChanged,
}) {
  return InkWell(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    enableFeedback: false,
    onTap: () {
      onChanged(value);
    },
    child: Row(
      children: [
        Radio<String>(
          splashRadius: 0,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: primaryColor,
          focusColor: primaryColor,
          groupValue: groupValue,
          value: value,
          onChanged: (newValue) {
            onChanged(newValue!);
          },
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: primaryColor,
          ),
        ),
      ],
    ),
  );
}

Story get radioStory => Story(
    name: "Radio",
    builder: (context) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ERadio(onChange: (value) {}, itemList: [
                Item(name: "Male", value: "male"),
                Item(name: "Female", value: "female"),
                Item(name: "Other", value: "other")
              ]),
            )
          ],
        ));
