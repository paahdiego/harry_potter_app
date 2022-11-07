import 'package:flutter/material.dart';
import 'package:harry_potter_app/src/shared/components/image_network_builder.dart';

class CharacterImageBox extends StatelessWidget {
  const CharacterImageBox({
    Key? key,
    required this.characterImageUrl,
    this.size = 80,
  }) : super(key: key);

  final String characterImageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(500),
      ),
      child: SizedBox(
        width: size,
        height: size,
        child: ImageNetworkBuilder(
          characterImageUrl,
          boxFit: BoxFit.cover,
        ),
      ),
    );
  }
}
