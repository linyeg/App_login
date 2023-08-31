import 'package:login/domain/repository/list_element_repository.dart';

import '../../domain/entities/list_element_entity.dart';
import '../datasource/list_element_impl.dart';

class ListElementImplRepository implements ListElementsRepository {
  final ListElementDataSourceAPI dataSource;

  ListElementImplRepository(this.dataSource);

  @override
  Future<ListElementEntity> getElement({required String id}) {
    return dataSource.getElement(id: id);
  }

  @override
  Future<ListElementEntity> getListElement() {
    return dataSource.getListElement();
  }
}
