import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarifler', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF3EC5EA),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          RecipeCard(
            title: 'Nutzz Çikolatalı Popcorn & Espresso Martini',
            description: 'Çikolatalı Nutzz popcorn, Espresso Martini\'nin kahve ve likör notalarını güçlendirir.',
            steps: [
              '1 paket Nutzz Çikolatalı Popcorn\'u kaseye koyun.',
              'Üzerine biraz toz kakao serpin ve taze kahve çekirdekleriyle süsleyin.',
              'Espresso Martini ile servis ederek çikolata ve kahve aromasını bütünleyin.',
            ],
            imageAsset: 'assets/chocolate_popcorn.jpg',
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> steps;
  final String imageAsset;

  const RecipeCard({
    required this.title,
    required this.description,
    required this.steps,
    required this.imageAsset,
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
          Image.asset(
            imageAsset,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
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
                Text(
                  description,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Hazırlanışı:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ...steps.map((step) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(step),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 