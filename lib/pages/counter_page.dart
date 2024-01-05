//
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

//  Import FILES
//  PARTS
//  SIGNALS
final counter = signal<int>(0);
//

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You pressed the button this many times',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              counter.watch(context).toString(),
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () => counter.value--,
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () => counter.value++,
                  icon: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () => counter.value++,
      //   label: const Text('Add'),
      //   icon: const Icon(Icons.add),
      // ),
    );
  }
}
