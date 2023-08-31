import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/controllers/listelements_controller.dart';
import 'package:login/infrastructure/datasource/list_element_impl.dart';
import 'package:login/presentation/screens/ElementListView.dart';

import '../../infrastructure/repository/listelement_impl_repository.dart';
import 'singup.dart';
import 'login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());

  ListElementImplRepository repository =
      ListElementImplRepository(ListElementDataSourceAPI());
  Get.lazyPut(() => ListElementsController(repository), fenix: true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => MainLogInScreen(),
        'Singup': (context) => const SingUpScreen(),
        'Elementos': (context) => const ElementListViewScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
    );
  }
}
