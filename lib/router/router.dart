import 'package:bases_web/ui/view/counter_provider_view.dart';
import 'package:bases_web/ui/view/counter_view.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
      transitionDuration: const Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/stateful',
      handler: _counterStatefulHandler,
      transitionDuration: const Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionDuration: const Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn,
    );
  }

  // Handlers

  static final Handler _counterHandler = Handler(handlerFunc: (context, params) => const CounterView());
  static final Handler _counterStatefulHandler = Handler(handlerFunc: (context, params) => const CounterView());
  static final Handler _counterProviderHandler = Handler(handlerFunc: (context, params) => const CounterProviderView());
}
