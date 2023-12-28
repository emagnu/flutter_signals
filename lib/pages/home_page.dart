//
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'counter_page.dart';
import 'listen_page.dart';
import 'signals_page.dart';
import 'computed_page.dart';
import 'controller_page.dart';
//  PARTS
//  SIGNALS

//

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40.0),
            ElevatedButton(
              child: const Text(
                'Signal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignalsPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text(
                'Counter',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterPage()),
                );
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text(
                'Computed',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ComputedPage()),
                );
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text(
                'Listen',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListenPage()),
                );
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text(
                'Controller',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ControllerPage()),
                );
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text(
                'Async',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
