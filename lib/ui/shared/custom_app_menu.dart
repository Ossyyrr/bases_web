import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [
      CustomFlatButton(
        onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
        text: 'Contador Stateful',
        color: Colors.black,
      ),
      const SizedBox(width: 10),
      CustomFlatButton(
        onPressed: () => locator<NavigationService>().navigateTo('/provider'),
        text: 'Contador Provider',
        color: Colors.black,
      ),
      const SizedBox(width: 10),
      CustomFlatButton(
        onPressed: () => locator<NavigationService>().navigateTo('/404'),
        text: 'Otra Página',
        color: Colors.black,
      ),
    ];

    return LayoutBuilder(
        builder: (_, constraints) =>
            constraints.maxWidth > 520 ? _TabletDesktopMenu(children: children) : _MobileMenu(children: children));
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      child: Row(
        children: children,
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
