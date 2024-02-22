import 'package:flutter/material.dart';

class CircleCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CircleCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: value ? themeColor.primary : Colors.grey[50],
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 10,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
