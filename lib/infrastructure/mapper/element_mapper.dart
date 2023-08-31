import 'package:flutter/material.dart';

import '../../domain/entities/elements_entity.dart';
import '../models/Element_model.dart';

class ElementMapper {
  ElementEntity toEntityElement(ElementModel elementmodel) {
    return ElementEntity(
        embeddedAuthor:
            EmbeddedMapper().toEntityEmbedded(elementmodel.embedded),
        id: elementmodel.id,
        link: elementmodel.link,
        title: TitleMapper().toEntityTitle(elementmodel.guid),
        content: ContentMapper().toEntityContent(elementmodel.content));
  }
}

class EmbeddedMapper {
  EmbeddedEntity toEntityEmbedded(Embedded embedded) {
    return EmbeddedEntity(
        author: embedded.author
            .map((author) =>
                EmbeddedAuthorMapper().toEntityEmbeddedAuthor(author))
            .toList());
  }
}

class EmbeddedAuthorMapper {
  AuthorEntity toEntityEmbeddedAuthor(EmbeddedAuthor author) {
    return AuthorEntity(
        name: author.name,
        avatar: EmbeddedAuthorAvatarMapper()
            .toEntityEmbeddedAuthorAvatar(author.simpleLocalAvatar.full));
  }
}

class EmbeddedAuthorAvatarMapper {
  AvatarEntity toEntityEmbeddedAuthorAvatar(String avatar) {
    return AvatarEntity(fullavatar: avatar);
  }
}

class TitleMapper {
  TitleEntity toEntityTitle(Guid guidTitle) {
    return TitleEntity(rendered: guidTitle.rendered);
  }
}

class ContentMapper {
  ContentEntity toEntityContent(Content content) {
    return ContentEntity(rendered: content.rendered);
  }
}
