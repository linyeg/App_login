import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailScreen.dart';

class ElementListViewScreen extends StatelessWidget {
  const ElementListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Center(
          child: Text(
            "Autores",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Listviews(),
    );
  }
}

final titles = ["Titulo", "Titulo 2", "Titulo 3"];
final subtitles = ["Nombre", "nombre", "nombre"];

class Listviews extends StatelessWidget {
  const Listviews({super.key});

  get rememberMe => null;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Navegar a la pantalla deseada cuando se hace clic en un elemento
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        authorName: 'Alex',
                        content: '',
                        imageUrl: '',
                        title: '',
                      )), // Reemplaza DetalleScreen con la pantalla a la que deseas navegar
            );
          },
          child: Card(
            child: ListTile(
              title: Text(titles[index]),
              subtitle: Text(subtitles[index]),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
