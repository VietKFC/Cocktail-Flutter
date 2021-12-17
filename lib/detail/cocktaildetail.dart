import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workout/constant.dart';
import 'package:flutter_workout/model/drink.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CocktailDetailScreen extends StatefulWidget {
  final Drink drink;

  const CocktailDetailScreen({Key? key, required this.drink}) : super(key: key);

  @override
  _CocktailDetailState createState() => _CocktailDetailState(drink);
}

class _CocktailDetailState extends State<CocktailDetailScreen> {
  final Drink drink;

  _CocktailDetailState(this.drink);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: CachedNetworkImage(
                    imageUrl: drink.thumb,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      drink.name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "${drink.category} - ${drink.alcoholic} - ${drink.glass}",
                      style: const TextStyle(color: Colors.grey, fontSize: 19),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SlidingUpPanel(
                      panel: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(212, 214, 221, .5),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              INGREDIENTS,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
