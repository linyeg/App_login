import 'package:login/domain/entities/listElement_entity.dart';

abstract class ListElementsDataSource {
  Future<ListElementEntity> getListElement();
  Future<ListElementEntity> getElement({required String id});
}
