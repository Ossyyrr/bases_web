import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomAppMenu(),
          Spacer(),
          // VIEW
          Spacer(),
        ],
      ),
    );
  }
}
