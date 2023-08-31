import 'package:get/get.dart';
import 'package:login/domain/entities/elements_entity.dart';
import 'package:login/domain/entities/list_element_entity.dart';
import 'package:login/domain/repository/list_element_repository.dart';

class ListElementsController extends GetxController {
  List<ListElementEntity> listelement = [];
  List<ElementEntity> news = [];
  String? elements;

  @override
  void onInit() {
    super.onInit();
    loadListElement();
  }

  final ListElementsRepository listElementsDataSourceRepository;
  ListElementsController(this.listElementsDataSourceRepository);

  loadListElement() async {
    try {
      await listElementsDataSourceRepository.getListElement();
      print("JEJE JAJA");
    } catch (e) {
      print("chirujotes");
    }
  }

  handleElements({required String id}) {
    elements = id;
    update();
  }

  handleListElement() {
    for (var element in listelement) {}
    update();
  }
}
