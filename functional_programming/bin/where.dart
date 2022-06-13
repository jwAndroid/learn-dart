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

  final result = people.where((element) => element["group"] == "블랙핑크");
  print(result);

  final deleteList = people.where((element) => element["name"] != "지수");
  print(deleteList);
}
