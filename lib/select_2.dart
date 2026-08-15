import 'package:flutter/material.dart';

class Select2 extends StatelessWidget {
  const Select2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Page')),
      body: const Center(
        child: Text(
          'This is Next Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
