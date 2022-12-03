import 'package:bases_web/router/route_generator.dart';
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
      // routes: {
      //   '/stateful': (context) => const CounterPage(),
      //   '/provider': (context) => const CounterProviderPage(),
      // },
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
