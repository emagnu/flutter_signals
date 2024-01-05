//
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

//  Import FILES
//  PARTS
//  SIGNALS
final helloWorldSignal = signal<String>('Hello World');
final helloSignalsSignal = signal<String>('Hello Signals');
final helloEmagnuSignal = signal<String>('Hello Emagnu');
//

class SignalsPage extends StatelessWidget {
  const SignalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signals Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is my: ',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            /// Using .watch() methond instead of Watch()
            Text(
              '  First Signals: ${helloWorldSignal.watch(context)}',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20.0),

            /// Using Watch() Widget instead of Builder() Widget
            Watch(
              (context) => Text(
                '  Second Signals: ${helloSignalsSignal.value}',
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            /// Using Watch() Widget but to rebuild only the Widget (0text in this case) that changes
            Watch(
              (context) {
                return Text(
                  '  Third Signals: ${helloEmagnuSignal.value}',
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
