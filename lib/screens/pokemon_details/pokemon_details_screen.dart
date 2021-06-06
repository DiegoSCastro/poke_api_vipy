import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_api_vipy/models/pokemon_item.dart';
import 'package:poke_api_vipy/screens/pokemon_details/pokemon_details_controller.dart';
import 'package:poke_api_vipy/screens/pokemon_details/widgets/stats_button.dart';
import 'package:poke_api_vipy/screens/pokemon_details/widgets/type_button.dart';
import 'package:poke_api_vipy/settings/app_colors.dart';
import 'package:poke_api_vipy/settings/app_extensions.dart';

class PokemonDetailsScreen extends StatelessWidget {
  final PokemonItem pokemonItem;

  PokemonDetailsScreen({
    required this.pokemonItem,
  });
  final getColor = {
    'grass': AppColors.grass,
    'poison': AppColors.poison,
    'fire': AppColors.fire,
    'flying': AppColors.flying,
    'water': AppColors.water,
    'bug': AppColors.bug,
    'normal': AppColors.normal,
    'electric': AppColors.electric,
    'ground': AppColors.ground,
    'rock': AppColors.rock,
    'psychic': AppColors.psychic,
    'fairy': AppColors.fairy,
    'dragon': AppColors.dragon,
    'fighting': AppColors.fighting,
    'dark': AppColors.dark,
  };
  Color get color => getColor['color']!;

  @override
  Widget build(BuildContext context) {
    PokemonDetailsController pokemonDetailsController =
        PokemonDetailsController(pokemonItem.url);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Observer(builder: (_) {
          if (pokemonDetailsController.loading)
            return Center(
              child: CircularProgressIndicator(),
            );
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 70,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 32,
                        bottom: 16,
                        child: GestureDetector(
                          onTap: Navigator.of(context).pop,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.gray,
                            ),
                            height: 32,
                            width: 32,
                            child: Icon(
                              Icons.arrow_back_rounded,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          pokemonDetailsController.pokemon!.name.capitalize(),
                          style: GoogleFonts.encodeSans(
                              color: AppColors.darkestGray,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  color: Colors.white,
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemonDetailsController.pokemon!.id}.png',
                        height: 96,
                        width: 96,
                      ),
                      Container(
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: GridView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: size.width * 0.5,
                              childAspectRatio: 3,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            itemCount:
                                pokemonDetailsController.pokemon!.types.length,
                            itemBuilder: (context, index) {
                              final pokemonType = pokemonDetailsController
                                  .pokemon!.types[index];
                              return TypeButton(
                                type: pokemonType.type.name.capitalize(),
                                color: getColor[pokemonType.type.name]!,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      StatsButton(
                          title: pokemonDetailsController
                              .pokemon!.stats[0].stat.name
                              .toUpperCase(),
                          value: pokemonDetailsController
                              .pokemon!.stats[0].baseStat
                              .toString()),
                      StatsButton(
                          title: 'Altura',
                          value: (pokemonDetailsController.pokemon!.height * 10)
                                  .toString() +
                              'cm'),
                      StatsButton(
                          title: pokemonDetailsController
                              .pokemon!.stats[1].stat.name
                              .capitalize(),
                          value: pokemonDetailsController
                              .pokemon!.stats[1].baseStat
                              .toString()),
                      StatsButton(
                          title: 'Peso',
                          value: (pokemonDetailsController.pokemon!.weight / 10)
                                  .toString() +
                              'Kg'),
                      StatsButton(
                          title: pokemonDetailsController
                              .pokemon!.stats[2].stat.name
                              .capitalize(),
                          value: pokemonDetailsController
                              .pokemon!.stats[2].baseStat
                              .toString()),
                      StatsButton(
                          title: pokemonDetailsController
                              .pokemon!.stats[3].stat.name
                              .capitalize(),
                          value: pokemonDetailsController
                              .pokemon!.stats[3].baseStat
                              .toString()),
                      StatsButton(
                          title: pokemonDetailsController
                              .pokemon!.stats[4].stat.name
                              .capitalize(),
                          value: pokemonDetailsController
                              .pokemon!.stats[4].baseStat
                              .toString()),
                      StatsButton(
                          title: pokemonDetailsController
                              .pokemon!.stats[5].stat.name
                              .capitalize(),
                          value: pokemonDetailsController
                              .pokemon!.stats[5].baseStat
                              .toString()),
                    ],
                  ),
                ),
                SizedBox(height: 50)
              ],
            ),
          );
        }),
      ),
    );
  }
}
