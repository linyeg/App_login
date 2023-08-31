import 'package:login/domain/entities/elements_entity.dart';
import 'package:login/infrastructure/mapper/element_mapper.dart';
import 'package:login/infrastructure/models/list_element_model.dart';

import '../../domain/entities/list_element_entity.dart';

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
