import 'package:flutter/material.dart';

import '../helpers/map_cardColor.dart';
import '../screens/poke_detail_screen.dart';

class PokeCard extends StatelessWidget {
  final dynamic poke;
  final BuildContext context;

  const PokeCard(this.poke, this.context);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(PokeDetailScreen.routeName, arguments: poke.id);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        margin: const EdgeInsets.only(bottom: 20, top: 5, left: 5, right: 5),
        decoration: BoxDecoration(
          color: setCardColor(poke.type1.toString()),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: setCardColor(poke.type1.toString()).withOpacity(0.5),
              blurRadius: 5,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#' + poke.id.toString(),
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                ),
                Text(
                  (poke.name),
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
               
              ],
            ),
            Positioned(
              right: -35,
              bottom: -50,
              child: FadeInImage.assetNetwork(
                placeholder: 'images/pokeLoad.gif',
                image: poke.sprite,
                imageScale: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
