import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StoresPage extends StatelessWidget {
  const StoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Mağazalar', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF3EC5EA),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          StoreCard(
            name: 'Hepsiburada',
            imageAsset: 'assets/hepsiburada_logo.png',
            url: 'https://www.hepsiburada.com/nutzz',
          ),
          StoreCard(
            name: 'Yemeksepeti',
            imageAsset: 'assets/yemeksepeti_logo.png',
            url: 'https://www.yemeksepeti.com/nutzz',
          ),
          StoreCard(
            name: 'Getir',
            imageAsset: 'assets/getir_logo.png',
            url: 'https://getir.com/nutzz',
          ),
          StoreCard(
            name: 'Migros Sanal Market',
            imageAsset: 'assets/migros_logo.png',
            url: 'https://www.migros.com.tr/nutzz',
          ),
          StoreCard(
            name: 'Trendyol',
            imageAsset: 'assets/trendyol_logo.png',
            url: 'https://www.trendyol.com/nutzz',
          ),
          StoreCard(
            name: 'Metro Online',
            imageAsset: 'assets/metro_logo.png',
            url: 'https://www.metro-tr.com/nutzz',
          ),
        ],
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final String name;
  final String imageAsset;
  final String url;

  const StoreCard({
    required this.name,
    required this.imageAsset,
    required this.url,
    super.key,
  });

  Future<void> _launchURL() async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: _launchURL,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                imageAsset,
                width: 80,
                height: 80,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
} 