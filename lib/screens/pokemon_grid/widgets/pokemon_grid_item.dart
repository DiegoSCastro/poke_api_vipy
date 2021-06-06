import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_api_vipy/models/pokemon_item.dart';
import 'package:poke_api_vipy/screens/pokemon_details/pokemon_details_screen.dart';
import 'package:poke_api_vipy/settings/app_colors.dart';
import 'package:poke_api_vipy/settings/app_extensions.dart';

class PokemonGridItem extends StatelessWidget {
  final PokemonItem pokemonItem;
  final int index;

  const PokemonGridItem(
      {Key? key, required this.pokemonItem, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PokemonDetailsScreen(
              pokemonItem: pokemonItem,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.network(
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png'),
            ),
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                  ),
                  color: AppColors.appBlue,
                ),
                width: double.infinity,
                height: 37,
                child: FittedBox(
                    child: Text(
                  pokemonItem.name.capitalize(),
                  style: GoogleFonts.encodeSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ))),
          ],
        ),
      ),
    );
  }
}
