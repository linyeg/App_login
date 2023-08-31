import 'package:flutter/material.dart';

// Clase que representa la pantalla de vista de detalle
class DetailScreen extends StatelessWidget {
  final String title;
  final String authorName;
  final String content;
  final String imageUrl;

  DetailScreen({
    required this.title,
    required this.authorName,
    required this.content,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del Elemento'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(imageUrl), // Muestra la imagen desde la URL
            SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Autor: $authorName'),
            SizedBox(height: 16.0),
            Text('Description $content'),
          ],
        ),
      ),
    );
  }
}
