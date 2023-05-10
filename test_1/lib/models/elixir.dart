part of 'model.dart';

class Elixir extends Equatable {
  final String? id;
  final String? name;
  const Elixir({
    this.id,
    this.name,
  });

  Elixir copyWith({
    String? id,
    String? name,
  }) {
    return Elixir(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Elixir.fromMap(Map<String, dynamic> map) {
    return Elixir(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Elixir.fromJson(String source) => Elixir.fromMap(json.decode(source));

  @override
  String toString() => 'Elixir(id: $id, name: $name)';

  @override
  List<Object?> get props => [id, name];
}
