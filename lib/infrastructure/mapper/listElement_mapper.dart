import 'package:login/domain/entities/elements_entity.dart';
import 'package:login/infrastructure/mapper/element_mapper.dart';
import 'package:login/infrastructure/models/listElements_model.dart';

import '../../domain/entities/ListElement_entity.dart';

class ListElementMapper {
  ListElementEntity toEntityListElement(ListElementModel list) {
    return ListElementEntity(news: list.listElements);
  }
}

// class ListElementMapper {
//   ListElementEntity toEntityListElement(ListElementModel list) {
//     List<ElementEntity> news = list.listElements.map((element) {
//       return ElementEntity(
//           embeddedAuthor: embeddedAuthor,
//           id: id,
//           link: link,
//           title: title,
//           content: content);
//     });

//     return ListElementEntity(news: news);
//   }
// }

// embedded.author
//             .map((author) =>
//                 EmbeddedAuthorMapper().toEntityEmbeddedAuthor(author))
//             .toList());
