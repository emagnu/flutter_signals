//
//  Import LIBRARIES
import 'package:signals/signals.dart';

//  Import FILES
// import '../pages/counter_pae.dart';
//  PARTS
//  SIGNALS
final counter = signal<int>(0);
//

class CounterController {
  CounterController();
  void increment() {
    counter.value++;
  }
}
