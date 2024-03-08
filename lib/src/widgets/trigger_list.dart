import 'package:flutter/material.dart';
import 'package:flutter_expansion/src/trigger_model.dart';
import 'package:flutter_expansion/src/widgets/indicator.dart';
import 'package:flutter_expansion/src/widgets/trigger_expansion_tile.dart';
import 'package:flutter_expansion/src/widgets/trigger_list_tile.dart';

class TriggerList extends StatelessWidget {
  const TriggerList({
    super.key,
    required this.list,
    required this.onToggleSelection,
  });

  final List<TriggerModel> list;
  final Function(bool, TriggerModel) onToggleSelection;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          final item = list[index];

          return item.children.isEmpty
              //element has no children - render casual tile
              ? Stack(
                  clipBehavior: Clip.none,
                  children: [
                    if (item.timeline) const Indicator(),
                    TriggerListTile(
                      title: item.title,
                      icon: item.icon,
                      value: item.selected,
                      onChanged: (value) {
                        onToggleSelection(value!, item);
                      },
                    ),
                  ],
                )
              //element has children - render expansion tile
              : Stack(
                  children: [
                    if (item.timeline) const Indicator(),
                    TriggerExpansionTile(
                      title: item.title,
                      icon: item.icon,
                      value: item.selected,
                      child: TriggerList(
                        onToggleSelection: onToggleSelection,
                        list: item.children,
                      ),
                      onChanged: (value) => onToggleSelection(
                        value!,
                        item,
                      ),
                    ),
                  ],
                );
        });
  }
}
