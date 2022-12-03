import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:bases_web/ui/pages/page_404.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterPage(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderPage(), '/provider');
      default:
        return _fadeRoute(const Page404(), '/404');

      // MaterialPageRoute(
      //   settings: const RouteSettings(name: '/404'),
      //   builder: (_) => const Page404(),
      // );
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      // Transición entre pantallas
      transitionsBuilder: (_, animation, __, ___) => FadeTransition(
        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
        child: child,
      ),
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}
