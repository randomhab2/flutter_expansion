import 'package:flutter/material.dart';
import 'package:flutter_expansion/src/constants/sizes.dart';
import 'package:flutter_expansion/src/widgets/circle_checkbox.dart';

class TriggerExpansionTile extends StatefulWidget {
  const TriggerExpansionTile({
    Key? key,
    required this.title,
    this.icon,
    required this.value,
    required this.onChanged,
    required this.child,
  }) : super(key: key);

  final String title;
  final IconData? icon;
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Widget child;

  @override
  State<TriggerExpansionTile> createState() => _TriggerExpansionTileState();
}

class _TriggerExpansionTileState extends State<TriggerExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 0.0,
      minLeadingWidth: 0,
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        leading: const SizedBox(),
        onExpansionChanged: (value) {
          setState(() {
            _isExpanded = value;
          });
        },
        controlAffinity: ListTileControlAffinity.leading,
        title: Padding(
          padding: const EdgeInsets.only(
            left: Sizes.p8,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: Sizes.p8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up_outlined
                        : Icons.keyboard_arrow_down_outlined,
                  ),
                ),
                gapW16,
                if (widget.icon != null) ...[
                  Icon(
                    widget.icon,
                  ),
                  gapW16,
                ],
                Expanded(child: Text(widget.title)),
                CircleCheckbox(
                  value: widget.value,
                  onChanged: widget.onChanged,
                ),
                gapW16,
              ],
            ),
          ),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: Sizes.p16,
            ),
            child: widget.child,
          )
        ],
      ),
    );
  }
}
