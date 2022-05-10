import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../helpers/map_cardColor.dart';
import '../models/pokemon.dart';
import '../provider/poke_provider.dart';


class PokeDetailScreen extends StatefulWidget {
  static const routeName = '/pokeDetailScreen';

  @override
  _PokeDetailScreenState createState() => _PokeDetailScreenState();
}

class _PokeDetailScreenState extends State<PokeDetailScreen> {
  int _selectedIndex = 0;
  var _isInit = true;

  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isInit) {
      final pokeId = ModalRoute.of(context)!.settings.arguments as String;
      Provider.of<PokeProvider>(context, listen: false)
          .getPokeData(pokeId)
          .then((_) {});
    }
    _isInit = false;
  }

  Widget _buttonBuilder(Pokemon pokeData, String title, int myIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = myIndex;
        });
      },
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _selectedIndex == myIndex
              ? setTypeColor(pokeData.type1)
              : Colors.transparent,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: _selectedIndex == myIndex
                    ? Colors.white
                    : setTypeColor(pokeData.type1),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<PokeProvider>(context);
    final pokeData = providerData.pokemon;

    return Scaffold(
        backgroundColor: providerData.isLoading!
            ? Colors.white
            : providerData.isRequestError
                ? Colors.white
                : setCardColor(pokeData.type1),
        body: providerData.isLoading!
            ? Center(child: Image.asset('images/pokeLoad.gif'))
            
                : Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width / 2,
                        color: providerData.isLoading!
                            ? Colors.white
                            : setCardColor(pokeData.type1),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width / 4.5,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 35,
                            bottom: -50,
                            left: 35,
                            child: FadeInImage.assetNetwork(
                              placeholder: 'images/pokeLoad.gif',
                              image: pokeData.sprite,
                              imageScale: 0.35,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(top: 5),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                (pokeData.name),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 35,
                                ),
                              ),
                              Text(
                                '#' + pokeData.id.toString(),
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(height: 10),
                              
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 25,
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: FittedBox(
                                  child: Text(
                                    pokeData.description,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
  }
}
