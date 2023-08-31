import '../entities/ListElement_entity.dart';

abstract class ListElementsDataSourceRepository {
  Future<ListElementEntity> getListElement();
  Future<ListElementEntity> getElement({required String id});
}
