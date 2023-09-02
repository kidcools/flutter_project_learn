import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/my_drop_down/controller.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/my_drop_down/model/MenuItem.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

enum MyDropDownType {
  normalDropDown,
  iconDropDown,
}

class MyDropDown extends StatelessWidget {
  final List<String> defaultItems = [
    '最新',
    '热门',
    '本月最新',
    '本月热门',
  ];
  final Map<String, String> defaultKv = {
    "最新": "/new",
    "热门": "/hot",
    "本月最新": "/monthNew",
    "本月热门": "/monthHot",
  };
  final List<String>? items;
  final Map<String, String>? kv;
  final MyDropDownController? myDropDownController;
  final uuid = Uuid().v4();
  final MyDropDownType dropDownType;
  final List<MenuItem>? iconMenuItems;
  final List<MenuItem>? iconMenuItemsFooter;
  MyDropDown(
      {Key? key,
      this.myDropDownController,
      this.items,
      this.kv,
      this.iconMenuItems,
      this.iconMenuItemsFooter,
      this.dropDownType = MyDropDownType.normalDropDown})
      : super(key: key);
  // 主视图
  Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDropDownController>(
      id: "dropDown",
      tag: uuid,
      init: myDropDownController ?? MyDropDownController(uniqTag: uuid),
      builder: (controller) {
        //return _buildView(controller);
        switch (dropDownType) {
          case MyDropDownType.normalDropDown:
            return _buildView(controller);
          case MyDropDownType.iconDropDown:
            return _buildIconView(controller);
        }
      },
    );
  }

  Widget _buildView(MyDropDownController controller) {
    return Center(
        child: DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Row(
          children: [
            Icon(
              Icons.list,
              size: 16,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                '选择类型',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: (items ?? defaultItems)
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: controller.selectedValue,
        onChanged: (String? value) {
          controller.updateSelectedValue(kv ?? defaultKv, value);
        },
        buttonStyleData: ButtonStyleData(
          height: 50,
          width: 160,
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.redAccent,
          ),
          elevation: 2,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.yellow,
          iconDisabledColor: Colors.grey,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.redAccent,
          ),
          offset: const Offset(-20, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    ));
  }

  /**
   * 返回带icon 的dropDownMenu
   */
  Widget _buildIconView(MyDropDownController controller) {
    //vertify params
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          customButton: const Icon(
            Icons.list,
            size: 46,
            color: Colors.red,
          ),
          items: [
            ...iconMenuItems!.map(
              (item) => DropdownMenuItem<MenuItem>(
                value: item,
                child: buildItem(item),
              ),
            ),
            const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
            ...iconMenuItemsFooter!.map(
              (item) => DropdownMenuItem<MenuItem>(
                value: item,
                child: buildItem(item),
              ),
            ),
          ],
          onChanged: (value) {
            controller.onChanged(value! as MenuItem);
          },
          dropdownStyleData: DropdownStyleData(
            width: 160,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.redAccent,
            ),
            offset: const Offset(0, 8),
          ),
          menuItemStyleData: MenuItemStyleData(
              customHeights: [
                ...List<double>.filled(iconMenuItems!.length, 38),
                8,
                ...List<double>.filled(iconMenuItemsFooter!.length, 48),
              ],
              padding: const EdgeInsets.only(left: 16, right: 16),
              selectedMenuItemBuilder: (context, widget) {
                return widget;
              }),
        ),
      ),
    );
  }
}
