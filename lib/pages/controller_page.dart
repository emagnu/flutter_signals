//
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_signals/controller.dart';
import 'package:signals/signals_flutter.dart';

//  Import FILES
//  PARTS
//  SIGNALS
final counter = signal<int>(0);
final counterController = CounterController();
//

class ControllerPage extends StatelessWidget {
  const ControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              counter.watch(context).toString(),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () => counterController.increment(),
                child: const Text('Press me'))
          ],
        ),
      ),
    );
  }
}
