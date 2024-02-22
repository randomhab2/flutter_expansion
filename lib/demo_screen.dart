import 'package:flutter/material.dart';
import 'package:flutter_expansion/src/trigger_items.dart';
import 'package:flutter_expansion/src/trigger_model.dart';
import 'package:flutter_expansion/src/widgets/trigger_list.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  late List<TriggerModel> _data;

  @override
  void initState() {
    super.initState();
    _data = List.from(triggerItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: TriggerList(
          list: _data,
          onToggleSelection: (checkboxValue, triggerModel) => _toggleSelection(
            item: triggerModel,
            value: checkboxValue,
          ),
        ),
      ),
    );
  }

  void _toggleSelection({
    required TriggerModel item,
    required bool value,
  }) {
    setState(() {
      _data = _updateSelection(_data, item, value);
      _data = _updateParentSelection(_data, item);
    });
  }

  List<TriggerModel> _updateParentSelection(
    List<TriggerModel> data,
    TriggerModel item,
  ) {
    return data.map((element) {
      if (element.children.any((child) => child.id == item.id)) {
        final allChildrenSelected =
            element.children.every((child) => child.selected);

        return element.copyWith(selected: allChildrenSelected);
      } else if (element.children.isNotEmpty) {
        // Recursively check parent nodes
        final updatedChildren = _updateParentSelection(element.children, item);
        final allChildrenSelected =
            updatedChildren.every((child) => child.selected);

        return element.copyWith(
          children: updatedChildren,
          selected: allChildrenSelected,
        );
      } else {
        return element;
      }
    }).toList();
  }

  List<TriggerModel> _updateSelection(
    List<TriggerModel> data,
    TriggerModel item,
    bool value,
  ) {
    return data.map((element) {
      if (element.id == item.id) {
        final newElement = element.copyWith(selected: !element.selected);
        return newElement.copyWith(
          children: _updateAllChildren(
            newElement.children,
            value,
          ),
        );
      } else if (element.children.isNotEmpty) {
        return element.copyWith(
          children: _updateSelection(
            element.children,
            item,
            value,
          ),
        );
      } else {
        return element;
      }
    }).toList();
  }

  List<TriggerModel> _updateAllChildren(
    List<TriggerModel> children,
    bool value,
  ) {
    return children.map((child) {
      final newChild = child.copyWith(selected: value);
      if (newChild.children.isNotEmpty) {
        return newChild.copyWith(
            children: _updateAllChildren(newChild.children, value));
      } else {
        return newChild;
      }
    }).toList();
  }
}
