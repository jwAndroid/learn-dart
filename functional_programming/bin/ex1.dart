void main() {
  List<Map<String, String>> people = [
    {
      "name": "로제",
      "group": "블랙핑크",
    },
    {
      "name": "지수",
      "group": "블랙핑크",
    },
    {
      "name": "RM",
      "group": "BTS",
    },
    {
      "name": "뷔",
      "group": "BTS",
    },
  ];

  final parsedPeople = people.map((e) {
    return Person(name: e["name"]!, group: e["group"]!);
  }).toList();

  print(parsedPeople);

  for (Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }

  final bts = parsedPeople.where((element) => element.group == "BTS");
  print(bts);

  final btsMappingList = people
      .map((e) => Person(name: e["name"]!, group: e["group"]!))
      .where((element) => element.group == "BTS");

  print(btsMappingList);
}

class Person {
  String? name;
  String? group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return "Person name:$name , group:$group";
  }
}
