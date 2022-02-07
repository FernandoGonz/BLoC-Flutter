class User {
  User({
    required this.name,
    required this.age,
    required this.profession,
  });

  String name;
  int age;
  List<String> profession;

  User copyWith({
    name,
    age,
    profession,
  }) =>
      User(
        name: name ?? this.name,
        age: age ?? this.age,
        profession: profession ?? this.profession,
      );
}
