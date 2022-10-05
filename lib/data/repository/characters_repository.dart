import 'package:untitled3/data/models/characters.dart';
import 'package:untitled3/data/web_services/characters_web_services.dart';

import '../models/quotes.dart';

class CharactersRepository {

   final CharactersWebServices charactersWebServices ;

  CharactersRepository(this.charactersWebServices);

   Future<List<Character>> getAllCharacters() async {
     final characters =await charactersWebServices.getAllCharacters();
     return characters.map((character) => Character.fromJson(character)).toList();
   }
   Future<List<Qoute>> getCharacterQoutes(String charName) async {
     final qoutes =await charactersWebServices.getCharacterQoutes(charName);
     return qoutes.map((charQoutes) => Qoute.fromJson(charQoutes)).toList();
   }

}