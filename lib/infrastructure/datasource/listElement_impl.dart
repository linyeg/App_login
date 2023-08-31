import 'package:dio/dio.dart';
import 'package:login/infrastructure/mapper/listElement_mapper.dart';

import '../../domain/datasource/listElement_datasource.dart';
import '../../domain/entities/ListElement_entity.dart';
import '../mapper/element_mapper.dart';
import '../models/Element_model.dart';
import '../models/ListelEments_model.dart';

class ListElementDataSourceAPI implements ListElementsDataSource {
  @override
  Future<ListElementEntity> getListElement() async {
    var dio = await Dio().get(
        'https://notigram.com/wp-json/wp/v2/posts?per_page=10&status=publish&page=1&_embed');
    return ListElementMapper().toEntityListElement();
  }

  @override
  Future<ListElementEntity> getElement({required String id}) async {
    var dio = await Dio().get(id);
    return ElementMapper().toEntityElement(ElementModel.fromJson(dio.data));
  }
}
