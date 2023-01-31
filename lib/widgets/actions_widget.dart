import 'package:flutter/material.dart';

class ActionsWidget extends StatelessWidget {
  final VoidCallback? onInfoPressed;
  final VoidCallback? onEditPressed;
  final VoidCallback onDeletePressed;
  final bool isEditable;
  final bool showInfo;
  const ActionsWidget({
    Key? key,
    this.onInfoPressed,
    this.onEditPressed,
    required this.onDeletePressed,
    this.isEditable = true,
    this.showInfo = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        showInfo
            ? IconButton(
                onPressed: () {},
                icon: const Icon(Icons.info_rounded, color: Colors.green),
              )
            : const SizedBox(),
        isEditable
            ? IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit_rounded, color: Colors.orange),
              )
            : const SizedBox(),
        IconButton(
          onPressed: onDeletePressed,
          icon: const Icon(Icons.delete_rounded, color: Colors.red),
        ),
      ],
    );
  }
}
