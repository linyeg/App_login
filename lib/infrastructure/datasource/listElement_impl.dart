import 'package:dio/dio.dart';
import 'package:login/domain/datasource/listElement_datasource.dart';
import 'package:login/domain/entities/listElement_entity.dart';

import '../mapper/listElement_mapper.dart';
import '../models/listelement_model.dart';

class ListElementDataSourceAPI implements ListElementsDataSource {
  @override
  Future<ListElementEntity> getElement({required String id}) async {
    var dio = Dio(); // Crea una instancia de Dio aquí
    var response =
        await dio.get('https://notigram.com/wp-json/wp/v2/posts/$id?_embed');

    return ListElementMapper()
        .toEntityListElement(ListElementModel.fromJson(response.data));
  }

  @override
  Future<ListElementEntity> getListElement() async {
    var dio = await Dio().get(
        'https://notigram.com/wp-json/wp/v2/posts?per_page=10&status=publish&page=1&_embed');
    return ListElementMapper()
        .toEntityListElement(ListElementModel.fromJson(dio.data));
  }
}
