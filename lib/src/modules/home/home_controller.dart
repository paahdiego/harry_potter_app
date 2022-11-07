import 'package:flutter/material.dart';
import 'package:harry_potter_app/src/repositories/character_repository.dart';
import 'package:harry_potter_app/src/modules/home/home_state.dart';

class HomeController {
  final homeStateNotifier = ValueNotifier<HomeState>(HomeStateEmpty());

  HomeState get state => homeStateNotifier.value;
  set state(HomeState state) => homeStateNotifier.value = state;

  final characterRepository = CharacterRepository();

  final scrollController = ScrollController();

  Future<void> fetchCharacters() async {
    state = HomeStateLoading();

    try {
      final response = await characterRepository.getCharacters();

      state = HomeStateSuccess(characters: response);
    } catch (error) {
      state = HomeStateError(message: error.toString());
    }
  }

  void refresh() {
    fetchCharacters();
  }
}
