import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:harry_potter_app/src/app/app_routes.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';
import 'package:harry_potter_app/src/models/character_model.dart';
import 'package:harry_potter_app/src/modules/character/components/character_image_box.dart';
import 'package:harry_potter_app/src/shared/components/default_refresh_indicator.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({
    Key? key,
    required this.onRefresh,
    required this.controller,
    required this.characters,
  }) : super(key: key);

  final VoidCallback onRefresh;
  final ScrollController controller;
  final List<CharacterModel> characters;

  @override
  Widget build(BuildContext context) {
    return DefaultRefreshIndicator(
      onRefresh: onRefresh,
      child: Scrollbar(
        child: ListView.separated(
          controller: controller,
          separatorBuilder: (context, _) {
            return const SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            final character = characters[index];

            final colorFlipper = index % 2 == 0;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Modular.to.pushNamed(
                    AppRoutes.characterDetails,
                    arguments: character,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:
                        colorFlipper ? AppColors.primary : AppColors.secondary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(128),
                      topLeft: Radius.circular(128),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      CharacterImageBox(characterImageUrl: character.image),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(character.name),
                            Text(character.house),
                            Text("played by:${character.actor}"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: characters.length,
        ),
      ),
    );
  }
}
