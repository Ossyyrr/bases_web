import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    print('CustomAppMenu build *****');
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            onPressed: () => navigationService.navigateTo('/stateful'),
            text: 'Contador Stateful',
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            onPressed: () => navigationService.navigateTo('/provider'),
            text: 'Contador Provider',
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            onPressed: () => navigationService.navigateTo('/404'),
            text: 'Otra Página',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
