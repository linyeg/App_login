import 'package:login/domain/entities/list_element_entity.dart';

abstract class ListElementsDataSource {
  Future<ListElementEntity> getListElement();
  Future<ListElementEntity> getElement({required String id});
}
