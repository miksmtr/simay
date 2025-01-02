import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final int index;
  const DetailsPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detay ${index + 1}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Detay Sayfası ${index + 1}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text('Buraya içerik eklenecek (Öğe ${index + 1})'),
          ],
        ),
      ),
    );
  }
}
