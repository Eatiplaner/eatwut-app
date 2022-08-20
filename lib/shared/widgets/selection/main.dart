import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class Item {
  String name;
  String value;
  bool isDisabled;

  Item({this.name = "", this.value = "", this.isDisabled = false});
}

class ESelection extends HookWidget {
  ESelection({Key? key, required this.itemList, required this.onOptionClick})
      : super(key: key);

  final List<Item> itemList;
  final ValueChanged<String> onOptionClick;

  @override
  Widget build(BuildContext context) {
    var data = useState<List<String>>([]);

    void onChangeData(String value) {
      List<String> newData = data.value;
      newData.contains(value) ? newData.remove(value) : newData.add(value);
      data.value = newData;
    }

    return SizedBox(
      height: itemList.length * 55,
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 16.0 * 3 / 2,
                height: 16.0 * 3 / 2,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.all<Color>(itemList[index]
                              .isDisabled ||
                          data.value.contains(itemList[index].value.toString())
                      ? primaryColor
                      : Colors.grey[100]!),
                  activeColor:
                      data.value.contains(itemList[index].value.toString())
                          ? primaryColor
                          : Colors.grey,
                  value: data.value.contains(itemList[index].value.toString()),
                  onChanged: (value) {
                    print(itemList[index].value);
                    print(data.value);
                    onChangeData(itemList[index].value);
                  },
                ),
              ),
              const SizedBox(
                width: 16.0 / 4,
              ),
              Row(
                children: [
                  Text(
                    itemList[index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: primaryColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.info_outline,
                      color: primaryColor,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        // separatorBuilder: (context, index) => const SizedBox(
        //    height: 16.0 * 3 / 4,
        //  ),
        itemCount: itemList.length,
      ),
    );
  }
}

Story get selectionStory => Story(
      name: "Selection",
      builder: (context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ESelection(
              onOptionClick: (value) {},
              itemList: [
                Item(
                    name: "Intermittent Fasting",
                    value: "intermittent",
                    isDisabled: true),
                Item(
                    name: "Mediterranean Diet",
                    value: "mediterranean",
                    isDisabled: true),
                Item(name: "Veganism", value: "veganism", isDisabled: true),
                Item(
                    name: "Sirtfood Diet", value: "sirtfood", isDisabled: true),
                Item(
                    name: "Carnivore Diet",
                    value: "carnivore",
                    isDisabled: true),
                Item(name: "Paleo Diet", value: "paleo", isDisabled: true),
                Item(
                    name: "Dessert with Breakfast Diet",
                    value: "breakfast",
                    isDisabled: true),
              ],
            ),
          ),
        ],
      ),
    );
