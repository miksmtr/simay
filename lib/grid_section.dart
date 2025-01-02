import 'package:flutter/material.dart';
import 'package:simay/collaborations_page.dart';
import 'package:simay/events_page.dart';
import 'package:simay/recipes_page.dart';
import 'package:simay/stores_page.dart';
import 'package:simay/qr_code_page.dart';

class GridSection extends StatelessWidget {
  const GridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        children: [
          GridButton(
            icon: Icons.handshake,
            label: 'İşbirlikleri',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CollaborationsPage()),
            ),
          ),
          GridButton(
            icon: Icons.event,
            label: 'Etkinlikler',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EventsPage()),
            ),
          ),
          GridButton(
            icon: Icons.restaurant_menu,
            label: 'Tarifler',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RecipesPage()),
            ),
          ),
          GridButton(
            icon: Icons.shopping_cart,
            label: 'Online Mağazalar',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StoresPage()),
            ),
          ),
          GridButton(
            icon: Icons.qr_code,
            label: 'Promosyon Kodu',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const QRCodePage()),
            ),
          ),
        ],
      ),
    );
  }
}

class GridButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const GridButton({
    required this.icon,
    required this.label,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Color(0xFF3EC5EA)),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}