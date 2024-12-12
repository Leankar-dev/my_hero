// ignore_for_file: public_member_api_docs, sort_constructors_first
class Character {
  String name;
  int level;
  double hitPoints;
  double manaPoints;
  bool isAlive;
  List<String> listAllies;

  // about player
  String player;
  DateTime
      createdAt; // DateTime é um objeto que nos permite guardar datas de forma inteligente

  // Meta Information
  String? urlImage;

  Character({
    required this.name,
    required this.level,
    required this.hitPoints,
    required this.manaPoints,
    required this.isAlive,
    required this.listAllies,
    required this.player,
    required this.createdAt,
    this.urlImage,
  });
}
