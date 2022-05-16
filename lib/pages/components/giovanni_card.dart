import 'package:flutter/material.dart';

class GiovanniCard extends StatelessWidget {
  final String gameName;
  final String gameGenre;

  GiovanniCard({required this.gameName, required this.gameGenre});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10
        ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.indigo),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text(
              'Title: ' + gameName,
              style: const TextStyle(fontSize: 18, color: Colors.indigo)),
          const SizedBox(height: 5),
          Text(
              'Genre: ' + gameGenre,
              style: const TextStyle(fontSize: 18, color: Colors.indigo)),
        ],
      ),
    );
  }
}
