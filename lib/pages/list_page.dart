import 'package:flutter/material.dart';
import 'package:giovanni_sir/pages/components/giovanni_button.dart';
import 'package:giovanni_sir/pages/components/giovanni_card.dart';
import 'package:giovanni_sir/pages/components/giovanni_form.dart';
import 'package:giovanni_sir/pages/components/giovanni_list_display.dart';
import 'package:giovanni_sir/pages/model/games_model.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPage();
  }
}

class _ListPage extends State<ListPage> {
  TextEditingController nameInputController = TextEditingController();
  TextEditingController genreInputController = TextEditingController();
  var gamesList = [];

  void clearText() {
    nameInputController.clear();
    genreInputController.clear();
  }

  addNewGame(
      {required String nameInputController,
      required String genreInputController}) {
    if (nameInputController.isEmpty || genreInputController.isEmpty) {
      print('Adicionar campos faltantes');
    } else {
      setState(() {
        if (gamesList.isEmpty) {
          gamesList.insert(
              0,
              Games(
                  gameTitle: nameInputController,
                  gameGenre: genreInputController));
          clearText();
        } else {
          gamesList.insert(
              gamesList.length,
              Games(
                  gameTitle: nameInputController,
                  gameGenre: genreInputController));
          clearText();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add your games', textAlign: TextAlign.justify),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              GiovanniForm(
                placeholder: 'Name',
                textedInput: nameInputController,
              ),
              const SizedBox(height: 15,),
              GiovanniForm(
                placeholder: 'Genre',
                textedInput: genreInputController,
              ),
              const SizedBox(height: 40),
              GiovanniListDisplay(gamesList: gamesList),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      floatingActionButton: GiovanniButton(
        onPressed: () {
          addNewGame(
              nameInputController: nameInputController.text,
              genreInputController: genreInputController.text);
        },
      ),
    );
  }
}
