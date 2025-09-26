import 'package:flutter/material.dart';

class CounterDetailPage extends StatelessWidget {
  final int value;
  const CounterDetailPage({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Counter")),
      body: Center(
        child: Text(
          "Nilai counter dikirim: $value",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
