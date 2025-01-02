import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etkinlikler', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF3EC5EA),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          EventCard(
            title: 'Nutzz & Espresso Lab Coffee Nights',
            location: 'Espresso Lab Merter Şubesi',
            date: 'Cuma, 19:00-22:00',
            description: 'Film, dizi veya podcast dinleme temalı etkinlik',
          ),
          EventCard(
            title: 'Bomontiada Açık Hava Sineması',
            location: 'Bomontiada',
            date: 'Cumartesi, 19:00-22:00',
            description: 'Açık havada film gösterimi ve ikramlar',
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String location;
  final String date;
  final String description;

  const EventCard({
    required this.title,
    required this.location,
    required this.date,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
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
            Row(
              children: [
                const Icon(Icons.location_on, size: 16),
                const SizedBox(width: 4),
                Text(location),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.access_time, size: 16),
                const SizedBox(width: 4),
                Text(date),
              ],
            ),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
} 