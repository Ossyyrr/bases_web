import 'package:fluro/fluro.dart';

import '../ui/view/counter_provider_view.dart';
import '../ui/view/counter_view.dart';
import '../ui/view/view_404.dart';
// Handlers

// Stateful
final Handler counterHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return CounterView(base: params['base']?.first ?? '5');
});

// Provider
final Handler counterProviderHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return CounterProviderView(base: params['q']?.first ?? '10');
});

// DashboardUser
final Handler dashboardUserHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return const View404();
});

// 404
final Handler PageNotFound = Handler(handlerFunc: (context, params) => const View404());
