import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

import '../shared/custom_app_menu.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomAppMenu(),
        const Spacer(),
        const Text('Contador Stateful', style: TextStyle(fontSize: 20)),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador: $counter',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incremantar',
              onPressed: () => setState(() => counter++),
            ),
            CustomFlatButton(
              text: 'Decremantar',
              onPressed: () => setState(() => counter--),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
