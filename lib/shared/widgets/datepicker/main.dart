import 'package:date_time_picker/date_time_picker.dart';
import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class EDatePicker extends StatelessWidget {
  const EDatePicker(
      {Key? key,
      this.value = "",
      this.initialValue,
      this.dateMask,
      this.minDate,
      this.maxDate,
      this.dateLabelText = "",
      this.timeLabelText = "",
      required this.onChange,
      required this.type,
      this.isError = false})
      : super(key: key);

  final String? dateMask;
  final String dateLabelText;
  final String timeLabelText;
  final DateTime? minDate;
  final DateTime? maxDate;
  final String? initialValue;
  final DateTimePickerType type;
  final String value;
  final ValueChanged<String> onChange;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DateTimePicker(
        type: type,
        initialValue: initialValue,
        dateMask: dateMask ?? "d MMM, yyyy",
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.calendar_month_outlined,
            color: primaryColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(width: 2.0, color: primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(width: 1.5, color: primaryColor),
          ),
          focusColor: primaryColor,
        ),
        firstDate: minDate,
        lastDate: maxDate,
        icon: const Icon(Icons.calendar_month_outlined),
        dateLabelText: dateLabelText,
        timeLabelText: timeLabelText,
        onChanged: (val) => onChange(val),
        validator: (val) {
          return null;
        },
        style: const TextStyle(color: primaryColor),
        onSaved: (val) => print(val),
      ),
    );
  }
}

Story get datePickerStory => Story(
      name: "Date picker",
      builder: (context) => SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: EDatePicker(
            onChange: (value) {},
            initialValue: DateTime.now().toString(),
            type: DateTimePickerType.date,
            minDate: DateTime(1900),
            maxDate: DateTime.now(),
            dateMask: "dd/MM/yyyy",
          ),
        ),
      ),
    );
