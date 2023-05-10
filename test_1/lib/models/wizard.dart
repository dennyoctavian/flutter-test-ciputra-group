part of 'model.dart';

class Wizard extends Equatable {
  final List<Elixir>? elixirs;
  final String? id;
  final String? firstName;
  final String? lastName;

  const Wizard({
    this.elixirs,
    this.id,
    this.firstName,
    this.lastName,
  });

  Wizard copyWith({
    List<Elixir>? elixirs,
    String? id,
    String? firstName,
    String? lastName,
  }) {
    return Wizard(
      elixirs: elixirs ?? this.elixirs,
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'elixirs': elixirs?.map((x) => x.toMap()).toList(),
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  factory Wizard.fromMap(Map<String, dynamic> map) {
    return Wizard(
      elixirs: map['elixirs'] != null
          ? List<Elixir>.from(map['elixirs']?.map((x) => Elixir.fromMap(x)))
          : null,
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Wizard.fromJson(String source) => Wizard.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Wizard(elixirs: $elixirs, id: $id, firstName: $firstName, lastName: $lastName)';
  }

  @override
  List<Object?> get props => [elixirs, id, firstName, lastName];
}
