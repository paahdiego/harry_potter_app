import 'package:flutter/material.dart';

import 'package:harry_potter_app/src/core/app_colors.dart';
import 'package:harry_potter_app/src/models/character_model.dart';
import 'package:harry_potter_app/src/modules/character/components/field_box.dart';
import 'package:harry_potter_app/src/modules/home/components/characters_list.dart';
import 'package:harry_potter_app/src/shared/components/custom_app_bar.dart';

class CharacterDetailsPage extends StatelessWidget {
  const CharacterDetailsPage({
    Key? key,
    required this.character,
  }) : super(key: key);

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CharacterImageBox(
                characterImageUrl: character.image,
                size: 150,
              ),
              const SizedBox(height: 20),
              FieldBox(title: "Name", value: character.name),
              FieldBox(title: "Actor", value: character.actor),
              FieldBox(title: "Ancestry", value: character.ancestry),
              FieldBox(title: "Date of Birth", value: character.dateOfBirth),
              FieldBox(title: "Patronus", value: character.patronus),
              FieldBox(title: "House", value: character.house),
              FieldBox(title: "Gender", value: character.gender),
              const Text("Wand: "),
              FieldBox(title: "Wood", value: character.wand.wood),
              FieldBox(title: "Core", value: character.wand.core),
              FieldBox(title: "Length", value: "${character.wand.length} cm"),
            ],
          ),
        ),
      ),
    );
  }
}
