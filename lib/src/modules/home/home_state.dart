import 'package:harry_potter_app/src/models/character_model.dart';

abstract class HomeState {}

class HomeStateSuccess extends HomeState {
  final List<CharacterModel> characters;
  HomeStateSuccess({
    required this.characters,
  });
}

class HomeStateError extends HomeState {
  final String message;
  HomeStateError({
    required this.message,
  });
}

class HomeStateLoading extends HomeState {}

class HomeStateEmpty extends HomeState {}
