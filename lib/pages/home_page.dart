import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_hero/data/my_character.dart';
import 'package:my_hero/data/url_constants.dart';
import 'package:my_hero/models/character.dart';
import 'package:my_hero/widgets/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Character character = getMyCharacter();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu Grande Personagem',
          style: TextStyle(
            color: Colors.amber[50],
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange[900],
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 7,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[900],
        child: Icon(
          Icons.heart_broken,
          color: Colors.amber[50],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.network(
                  (character.urlImage != null)
                      ? character.urlImage!
                      : UrlConstants.urlHeroine,
                  width: 300,
                  height: 400,
                ),
              ),
              Text(
                character.name,
                style: GoogleFonts.seaweedScript(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Por ${character.player}, criado em ${character.createdAt.toString().substring(0, 10)}.',
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(
                  color: Colors.blueAccent,
                ),
              ),
              ListItem(
                title: 'Nível',
                value: character.level.toString(),
              ),
              ListItem(
                title: 'Vida',
                value: '${character.hitPoints}/${character.level * 11}',
              ),
              ListItem(
                title: 'Mana',
                value: '${character.manaPoints}/${character.level * 2}',
              ),
              ListItem(
                title: 'Vivo?',
                value: (character.isAlive) ? '❤️' : '💀',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
