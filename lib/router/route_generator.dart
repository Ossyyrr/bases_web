
// ! Archivo antiguo
// EN EL MAIN
// // onGenerateRoute: RouteGenerator.generateRoute,

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/stateful':
//         return _fadeRoute(const CounterView(base: '5'), '/stateful');
//       case '/provider':
//         return _fadeRoute(const CounterProviderView(base: '4'), '/provider');
//       default:
//         return _fadeRoute(const View404(), '/404');
//     }
//   }

//   static PageRoute _fadeRoute(Widget child, String routeName) {
//     return PageRouteBuilder(
//       settings: RouteSettings(name: routeName),
//       pageBuilder: (_, __, ___) => child,
//       // Transición entre pantallas
//       transitionsBuilder: (_, animation, __, ___) => kIsWeb // SI ES WEB
//           ? FadeTransition(
//               opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
//               child: child,
//             )
//           : CupertinoPageTransition(
//               primaryRouteAnimation: animation,
//               secondaryRouteAnimation: __,
//               linearTransition: true,
//               child: child,
//             ),
//       transitionDuration: const Duration(milliseconds: 200),
//     );
//   }
// }
