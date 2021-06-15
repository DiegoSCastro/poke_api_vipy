import 'package:flutter/material.dart';

import '../../settings/app_assets.dart';
import '../../settings/app_colors.dart';
import '../pokemon_grid/pokemon_grid_screen.dart';
import 'widgets/home_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        child: Stack(
          children: [
            Image.asset(
              Assets.homeBackground,
              height: size.height * 0.75,
              width: size.width,
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
                child: Container(
                  height: size.height * 0.30,
                  width: size.width,
                  color: AppColors.background,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset(Assets.pokeApi),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HomeButton(onTap: () {}, title: 'Criar conta'),
                          SizedBox(width: 16),
                          HomeButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PokemonGridScreen()));
                              },
                              title: 'Entrar'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
