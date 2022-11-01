import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:harry_potter_app/src/models/wand_model.dart';

class CharacterModel {
  final String name;
  final List<String> alternateNames;
  final String species;
  final String gender;
  final String house;
  final String dateOfBirth;
  final int yearOfBirth;
  final bool wizard;
  final String ancestry;
  final String eyeColour;
  final String hairColour;
  final WandModel wand;
  final String patronus;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String actor;
  final List<String> alternateActors;
  final bool alive;
  final String image;
  CharacterModel({
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.gender,
    required this.house,
    required this.dateOfBirth,
    required this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    required this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alternateActors,
    required this.alive,
    required this.image,
  });

  CharacterModel copyWith({
    String? name,
    List<String>? alternateNames,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    int? yearOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    WandModel? wand,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    List<String>? alternateActors,
    bool? alive,
    String? image,
  }) {
    return CharacterModel(
      name: name ?? this.name,
      alternateNames: alternateNames ?? this.alternateNames,
      species: species ?? this.species,
      gender: gender ?? this.gender,
      house: house ?? this.house,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      yearOfBirth: yearOfBirth ?? this.yearOfBirth,
      wizard: wizard ?? this.wizard,
      ancestry: ancestry ?? this.ancestry,
      eyeColour: eyeColour ?? this.eyeColour,
      hairColour: hairColour ?? this.hairColour,
      wand: wand ?? this.wand,
      patronus: patronus ?? this.patronus,
      hogwartsStudent: hogwartsStudent ?? this.hogwartsStudent,
      hogwartsStaff: hogwartsStaff ?? this.hogwartsStaff,
      actor: actor ?? this.actor,
      alternateActors: alternateActors ?? this.alternateActors,
      alive: alive ?? this.alive,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'alternate_names': alternateNames,
      'species': species,
      'gender': gender,
      'house': house,
      'dateOfBirth': dateOfBirth,
      'yearOfBirth': yearOfBirth,
      'wizard': wizard,
      'ancestry': ancestry,
      'eyeColour': eyeColour,
      'hairColour': hairColour,
      'wand': wand.toMap(),
      'patronus': patronus,
      'hogwartsStudent': hogwartsStudent,
      'hogwartsStaff': hogwartsStaff,
      'actor': actor,
      'alternate_actors': alternateActors,
      'alive': alive,
      'image': image,
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      name: map['name'] ?? '',
      alternateNames: List<String>.from(map['alternate_names']),
      species: map['species'] ?? '',
      gender: map['gender'] ?? '',
      house: map['house'] ?? '',
      dateOfBirth: map['dateOfBirth'] ?? '',
      yearOfBirth: map['yearOfBirth']?.toInt() ?? 0,
      wizard: map['wizard'] ?? false,
      ancestry: map['ancestry'] ?? '',
      eyeColour: map['eyeColour'] ?? '',
      hairColour: map['hairColour'] ?? '',
      wand: WandModel.fromMap(map['wand']),
      patronus: map['patronus'] ?? '',
      hogwartsStudent: map['hogwartsStudent'] ?? false,
      hogwartsStaff: map['hogwartsStaff'] ?? false,
      actor: map['actor'] ?? '',
      alternateActors: List<String>.from(map['alternate_actors']),
      alive: map['alive'] ?? false,
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharacterModel &&
        other.name == name &&
        listEquals(other.alternateNames, alternateNames) &&
        other.species == species &&
        other.gender == gender &&
        other.house == house &&
        other.dateOfBirth == dateOfBirth &&
        other.yearOfBirth == yearOfBirth &&
        other.wizard == wizard &&
        other.ancestry == ancestry &&
        other.eyeColour == eyeColour &&
        other.hairColour == hairColour &&
        other.wand == wand &&
        other.patronus == patronus &&
        other.hogwartsStudent == hogwartsStudent &&
        other.hogwartsStaff == hogwartsStaff &&
        other.actor == actor &&
        listEquals(other.alternateActors, alternateActors) &&
        other.alive == alive &&
        other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        alternateNames.hashCode ^
        species.hashCode ^
        gender.hashCode ^
        house.hashCode ^
        dateOfBirth.hashCode ^
        yearOfBirth.hashCode ^
        wizard.hashCode ^
        ancestry.hashCode ^
        eyeColour.hashCode ^
        hairColour.hashCode ^
        wand.hashCode ^
        patronus.hashCode ^
        hogwartsStudent.hashCode ^
        hogwartsStaff.hashCode ^
        actor.hashCode ^
        alternateActors.hashCode ^
        alive.hashCode ^
        image.hashCode;
  }

  @override
  String toString() {
    return 'CharacterModel(name: $name, alternateNames: $alternateNames, species: $species, gender: $gender, house: $house, dateOfBirth: $dateOfBirth, yearOfBirth: $yearOfBirth, wizard: $wizard, ancestry: $ancestry, eyeColour: $eyeColour, hairColour: $hairColour, wand: $wand, patronus: $patronus, hogwartsStudent: $hogwartsStudent, hogwartsStaff: $hogwartsStaff, actor: $actor, alternateActors: $alternateActors, alive: $alive, image: $image)';
  }
}
