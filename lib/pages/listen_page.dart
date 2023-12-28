//
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals/signals.dart';
import 'package:signals/signals_flutter.dart';

//  Import FILES
//  PARTS
//  SIGNALS
final counter = signal<int>(0);
final counterType = computed(() => counter.value.isEven ? 'Even' : 'Odd');
//

class ListenPage extends StatelessWidget {
  const ListenPage({super.key});

  @override
  Widget build(BuildContext context) {
    counter.listen(context, () {
      final snackBar = SnackBar(content: Text('Counter value is $counterType'));
      if (counter.value.remainder(3) == 0 && counter.value > 3) {
        debugPrint(counter.value.remainder(3).toString());
        ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(snackBar);
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listen Page'),
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
            const SizedBox(height: 20.0),
            Watch(
              (context) => Text(
                'This number is: $counterType',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.value++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
