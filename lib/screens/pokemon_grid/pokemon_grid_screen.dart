import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:poke_api_vipy/screens/home/widgets/home_button.dart';
import 'package:poke_api_vipy/screens/pokemon_grid/pokemon_grid_controller.dart';
import 'package:poke_api_vipy/screens/pokemon_grid/widgets/pokemon_grid_item.dart';
import 'package:poke_api_vipy/settings/app_assets.dart';
import 'package:poke_api_vipy/settings/app_colors.dart';

class PokemonGridScreen extends StatelessWidget {
  final PokemonGridController pokemonGridController = PokemonGridController();

  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40, top: 40),
                    child: Image.asset(
                      Assets.pokeApi,
                    ),
                  ),
                ),
                Observer(builder: (_) {
                  if (pokemonGridController.loading)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: size.width * 0.5,
                        childAspectRatio: 1.11,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: pokemonGridController.pokemonList.length,
                      itemBuilder: (context, index) {
                        final pokemon =
                            pokemonGridController.pokemonList[index];
                        return PokemonGridItem(
                          index: index,
                          pokemonItem: pokemon,
                        );
                      },
                    ),
                  );
                }),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: HomeButton(
                      onTap: pokemonGridController.getMorePokemons,
                      title: 'Carregar mais',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
