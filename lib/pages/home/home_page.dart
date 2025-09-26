  import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String email;
  const HomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selamat datang, $email"),

            const SizedBox(height: 20),

            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("IconButton ditekan")),
                );
              },
              icon: const Icon(Icons.thumb_up),
            ),

            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("GestureDetector disentuh")),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.blueAccent,
                child: const Text(
                  "Saya bisa disentuh!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("FAB ditekan")),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
