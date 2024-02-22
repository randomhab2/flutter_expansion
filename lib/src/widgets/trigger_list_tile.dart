import 'package:flutter/material.dart';
import 'package:flutter_expansion/src/constants/sizes.dart';
import 'package:flutter_expansion/src/widgets/circle_checkbox.dart';

class TriggerListTile extends StatelessWidget {
  const TriggerListTile({
    Key? key,
    required this.title,
    this.icon,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final IconData? icon;
  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      horizontalTitleGap: 0.0,
      minLeadingWidth: 0,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Padding(
          padding: const EdgeInsets.only(
            left: Sizes.p16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                ),
                gapW16,
              ],
              Expanded(child: Text(title)),
              CircleCheckbox(
                value: value,
                onChanged: onChanged,
              ),
              gapW16,
            ],
          ),
        ),
      ),
    );
  }
}
