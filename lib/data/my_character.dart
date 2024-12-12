// lugar onde possa colocar uma informação especifica
// uma instancia da classe character
// vamos criar uma função que vai nos devolver um objeto

import 'package:my_hero/data/url_constants.dart';
import 'package:my_hero/models/character.dart';

Character getMyCharacter() {
  return Character(
    name: 'Super Man',
    level: 10,
    hitPoints: 50.2,
    manaPoints: 15.5,
    isAlive: true,
    listAllies: ['Mithra', 'Nabis', 'Magnus Victor'],
    player: 'LAS',
    createdAt: DateTime.parse('2024-12-11'),
    urlImage: UrlConstants.urlHeroFirst,
  );
}
