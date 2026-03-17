import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber[200],
          title: const Text('My first app', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: const MyFirstAppBody(),
      ),
    );
  }
}

class MyFirstAppBody extends StatelessWidget {
  const MyFirstAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // 1. Image Section with Blue Background
          Container(
            color: Colors.cyan[100],
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
              'https://picsum.photos/id/10/400/300',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),

          // 2. Question Section with Pink Background
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            color: Colors.pink[100],
            child: const Text(
              'What image is that?',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 16),

          // 3. Icon Selection Section with Yellow Background
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            color: Colors.amber[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                IconCategory(icon: Icons.restaurant, label: 'Food'),
                IconCategory(icon: Icons.umbrella, label: 'Scenery'),
                IconCategory(icon: Icons.person, label: 'People'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Helper widget to keep the Row clean
class IconCategory extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconCategory({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 28),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}