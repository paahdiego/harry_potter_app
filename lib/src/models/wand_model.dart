import 'dart:convert';

class WandModel {
  final String wood;
  final String core;
  final int length;
  WandModel({
    required this.wood,
    required this.core,
    required this.length,
  });

  WandModel copyWith({
    String? wood,
    String? core,
    int? length,
  }) {
    return WandModel(
      wood: wood ?? this.wood,
      core: core ?? this.core,
      length: length ?? this.length,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wood': wood,
      'core': core,
      'length': length,
    };
  }

  factory WandModel.fromMap(Map<String, dynamic> map) {
    return WandModel(
      wood: map['wood'] ?? '',
      core: map['core'] ?? '',
      length: map['length']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory WandModel.fromJson(String source) =>
      WandModel.fromMap(json.decode(source));

  @override
  String toString() => 'WandModel(wood: $wood, core: $core, length: $length)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WandModel &&
        other.wood == wood &&
        other.core == core &&
        other.length == length;
  }

  @override
  int get hashCode => wood.hashCode ^ core.hashCode ^ length.hashCode;
}
