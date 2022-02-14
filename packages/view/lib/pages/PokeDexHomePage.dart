import 'package:flutter/material.dart';
import 'package:controller/controller.dart';

class PokeDexHomePage extends StatefulWidget {
  PokeDexHomePage({Key? key}) : super(key: key);

  @override
  State<PokeDexHomePage> createState() => _PokeDexHomePageState();
}

class _PokeDexHomePageState extends State<PokeDexHomePage> {
  ApiMethods metodo = ApiMethods();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Insira aqui o nome do Pokemon a ser consultado: '),
            TextField(),
            TextButton(
                onPressed: () {
                  //Aqui dentro vai o metodo que chama a busca
                  metodo.searchPokemon(1);
                },
                child: Text('Pesquisar')),
          ],
        )),
      ),
    );
  }
}
