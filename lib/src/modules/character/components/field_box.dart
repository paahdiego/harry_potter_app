import 'package:flutter/material.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';

class FieldBox extends StatelessWidget {
  const FieldBox({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      child: Row(
        children: [
          Text("$title:"),
          const SizedBox(width: 10),
          Text(value),
        ],
      ),
    );
  }
}
