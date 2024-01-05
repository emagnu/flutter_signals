//
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

//  Import FILES
import '../helper/controller.dart';
//  PARTS

//  SIGNALS
// final counter = signal<int>(0);
//  final CounterController counterController = CounterController();
//

class ControllerPage extends StatelessWidget {
  const ControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = CounterController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counter.watch(context).toString(),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => counterController.increment(),
              // onPressed: () => controller.increment(),
              child: const Text('Increment me'),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         counter.watch(context).toString(),
      //       ),
      //       const SizedBox(height: 20.0),
      //       ElevatedButton(
      //           onPressed: () => counterController.increment(),
      //           child: const Text('Increment me'))
      //     ],
      //   ),
      // ),
    );
  }
}
