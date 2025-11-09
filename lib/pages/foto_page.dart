import 'package:flutter/material.dart';

class FotoPage extends StatelessWidget {
  const FotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1412),
      appBar: AppBar(
        backgroundColor: const Color(0xFF141E1B),
        title: const Text('Nieuwe oefening'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Hier komt straks de analysepagina 💪',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
