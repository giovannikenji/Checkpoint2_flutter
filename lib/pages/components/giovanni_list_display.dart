import 'package:flutter/material.dart';
import 'package:giovanni_sir/pages/components/giovanni_card.dart';

class GiovanniListDisplay extends StatelessWidget {
  var gamesList;

  GiovanniListDisplay({required this.gamesList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 20);
      },
      itemCount: gamesList.length,
      itemBuilder: (context, index) {
        return GiovanniCard(
            gameName: gamesList[index].gameTitle.toString(),
            gameGenre: gamesList[index].gameGenre.toString());
      },
    );
  }
}
