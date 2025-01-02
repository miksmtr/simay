import 'package:flutter/material.dart';

class CollaborationsPage extends StatelessWidget {
  const CollaborationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İşbirlikleri', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF3EC5EA),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CollaborationCard(
            title: 'Nutzz Moments x Espresso Lab',
            description: 'Popcorn ve kahvenin mükemmel uyumu',
            discount: '15% İndirim',
            imageUrl: 'assets/espresso_lab.jpg',
          ),
          // Add more collaboration cards here
        ],
      ),
    );
  }
}

class CollaborationCard extends StatelessWidget {
  final String title;
  final String description;
  final String discount;
  final String imageUrl;

  const CollaborationCard({
    required this.title,
    required this.description,
    required this.discount,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(description),
                const SizedBox(height: 8),
                Text(
                  discount,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 