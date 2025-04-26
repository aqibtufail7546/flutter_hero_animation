import 'dart:convert';

class Person {
  final String id;
  final String name;
  final String imageUrl;
  final String croppedImageUrl;
  final String profession;
  final String birthInfo;

  Person({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.croppedImageUrl,
    required this.profession,
    required this.birthInfo,
  });

  Person copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? croppedImageUrl,
    String? profession,
    String? birthInfo,
  }) {
    return Person(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      croppedImageUrl: croppedImageUrl ?? this.croppedImageUrl,
      profession: profession ?? this.profession,
      birthInfo: birthInfo ?? this.birthInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'croppedImageUrl': croppedImageUrl,
      'profession': profession,
      'birthInfo': birthInfo,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      id: map['id'] as String,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
      croppedImageUrl: map['croppedImageUrl'] as String,
      profession: map['profession'] as String,
      birthInfo: map['birthInfo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Person(id: $id, name: $name, imageUrl: $imageUrl, croppedImageUrl: $croppedImageUrl, profession: $profession, birthInfo: $birthInfo)';
  }

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other.croppedImageUrl == croppedImageUrl &&
        other.profession == profession &&
        other.birthInfo == birthInfo;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        imageUrl.hashCode ^
        croppedImageUrl.hashCode ^
        profession.hashCode ^
        birthInfo.hashCode;
  }
}
