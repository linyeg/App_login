import 'package:flutter/material.dart';

class ElementEntity {
  final int id;
  final TitleEntity title;
  final ContentEntity content;
  final String link;
  final EmbeddedEntity embeddedAuthor;

  ElementEntity(
      {required this.embeddedAuthor,
      required this.id,
      required this.link,
      required this.title,
      required this.content});
}

class TitleEntity {
  final String rendered;

  TitleEntity({required this.rendered});
}

class ContentEntity {
  final String rendered;

  ContentEntity({required this.rendered});
}

class EmbeddedEntity {
  final List<AuthorEntity> author;

  EmbeddedEntity({required this.author});
}

class AuthorEntity {
  final String name;
  final AvatarEntity avatar;

  AuthorEntity({required this.name, required this.avatar});
}

class AvatarEntity {
  final String fullavatar;

  AvatarEntity({required this.fullavatar});
}
