import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class Item {
  String name;
  String value;
  bool isEnable;
  bool isSelected;

  Item(
      {this.name = "",
      this.value = "",
      this.isSelected = false,
      this.isEnable = true});
}

class ESelection extends StatefulWidget {
  const ESelection(
      {Key? key, required this.itemList, required this.onOptionClick})
      : super(key: key);

  final List<Item> itemList;
  final ValueChanged<String> onOptionClick;

  @override
  State<ESelection> createState() => _ESelectionState();
}

class _ESelectionState extends State<ESelection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.itemList.length * 55,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            if (widget.itemList[index].isSelected) {
              setState(() {
                widget.onOptionClick(widget.itemList[index].value);
              });
            }
          },
          child: buildTermItem(index),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 16.0 * 3 / 4,
        ),
        itemCount: widget.itemList.length,
      ),
    );
  }

  Row buildTermItem(int index) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 16.0 * 3 / 2,
          height: 16.0 * 3 / 2,
          child: IgnorePointer(
            child: Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.all<Color>(
                  widget.itemList[index].isEnable
                      ? primaryColor
                      : Colors.grey[100]!),
              activeColor:
                  widget.itemList[index].isEnable ? primaryColor : Colors.grey,
              value: widget.itemList[index].isSelected,
              onChanged: (value) {},
            ),
          ),
        ),
        const SizedBox(
          width: 16.0 / 4,
        ),
        Row(
          children: [
            Text(
              widget.itemList[index].name ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: primaryColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const Icon(
              Icons.info_outline,
              color: primaryColor,
              size: 24.0,
            ),
          ],
        ),
      ],
    );
  }
}

Story get selectionStory => Story(
      name: "Selection",
      builder: (context) => Column(
        children: [
          ESelection(
            onOptionClick: (value) {},
            itemList: [
              Item(
                  name: "Intermittent Fasting",
                  value: "intermittent",
                  isEnable: true),
              Item(
                  name: "Mediterranean Diet",
                  value: "mediterranean",
                  isEnable: true),
              Item(name: "Veganism", value: "veganism", isEnable: true),
              Item(name: "Sirtfood Diet", value: "sirtfood", isEnable: true),
              Item(name: "Carnivore Diet", value: "carnivore", isEnable: true),
              Item(name: "Paleo Diet", value: "paleo", isEnable: true),
              Item(
                  name: "Dessert with Breakfast Diet",
                  value: "breakfast",
                  isEnable: true),
            ],
          ),
        ],
      ),
    );
