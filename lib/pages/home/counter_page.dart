import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// ChangeNotifier
class CounterProvider extends ChangeNotifier {
  int value = 0;

  void increment() {
    value++;
    notifyListeners();
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0; // setState demo

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Counter pakai setState
            Text("Counter dengan setState: $counter"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text("Tambah (setState)"),
            ),
            const SizedBox(height: 30),

            // Counter pakai Provider
            Text("Counter dengan Provider: ${provider.value}"),
            ElevatedButton(
              onPressed: () {
                provider.increment();
              },
              child: const Text("Tambah (Provider)"),
            ),
            const SizedBox(height: 30),

            // Navigasi dengan Data Passing
            // ElevatedButton(
            //   onPressed: () {
            //     GoRouter.of(context).go('/counter/detail', extra: provider.value);
            //   },
            //   child: const Text("Lihat Detail (Data Passing)"),
            // ),
          ],
        ),
      ),
    );
  }
}
