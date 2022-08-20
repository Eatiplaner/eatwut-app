import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:date_time_picker/date_time_picker.dart';

class Item{
  String name;
  String value;

  Item({this.name = "", this.value = ""});
}

class EDatePicker extends StatelessWidget {
  const EDatePicker(
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
    return SizedBox(
      child: SizedBox(
        height: itemList.length * 55,
        child: DateTimePicker(
          type: DateTimePickerType.dateTimeSeparate,
          dateMask: 'd MMM, yyyy',
          initialValue: DateTime.now().toString(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
          icon: Icon(Icons.event),
          dateLabelText: 'Date',
          timeLabelText: "Hour",
          selectableDayPredicate: (date) {
            // Disable weekend days to select from the calendar
            if (date.weekday == 6 || date.weekday == 7) {
              return false;
            }

            return true;
          },
          onChanged: (val) => print(val),
          validator: (val) {
            print(val);
            return null;
          },
          onSaved: (val) => print(val),
        ),
      )
    );
  }
}


Story get radioStory => Story(
  name: "Radio",
  builder: (context) => Column(
    children: [],
  )
);