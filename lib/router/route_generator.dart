import 'package:bases_web/ui/view/counter_provider_view.dart';
import 'package:bases_web/ui/view/counter_view.dart';
import 'package:bases_web/ui/view/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterView(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderView(), '/provider');
      default:
        return _fadeRoute(const View404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      // Transición entre pantallas
      transitionsBuilder: (_, animation, __, ___) => kIsWeb // SI ES WEB
          ? FadeTransition(
              opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              linearTransition: true,
              child: child,
            ),
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}
