import 'package:bases_web/router/route_generator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: navigationService
          .navigatorKey, //Este navigator key mantiene la referencia para la navegación que builder está creando
      builder: (_, child) => MainLayoutPage(child: child ?? const SizedBox.shrink()),
    );
  }
}
