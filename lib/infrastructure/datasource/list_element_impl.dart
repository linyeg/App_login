import 'package:dio/dio.dart';
import 'package:login/domain/datasource/list_element_datasource.dart';
import 'package:login/domain/entities/list_element_entity.dart';
import 'package:login/infrastructure/mapper/listElement_mapper.dart';
import 'package:login/infrastructure/models/list_element_model.dart';

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
    try {
      var dio = Dio();
      var response = await dio.get(
          'https://notigram.com/wp-json/wp/v2/posts?per_page=10&status=publish&page=1&_embed');

      ListElementModel listElementModel =
          ListElementModel.fromJson(response.data);

      ListElementEntity listElementEntity =
          ListElementMapper().toEntityListElement(listElementModel);

      return listElementEntity;
    } catch (e) {
      // Manejar el error si algo sale mal
      print("Error: $e");
      throw e; // Puedes elegir manejarlo de otra manera si lo prefieres
    }
    // var dio = await Dio().get(
    //     'https://notigram.com/wp-json/wp/v2/posts?per_page=10&status=publish&page=1&_embed');
    // print("");
    // return ListElementMapper()
    //     .toEntityListElement(ListElementModel.fromJson(dio.data));
  }
}
