// lib/widgets/earthquake_list_item.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Tarih formatlama için (pubspec.yaml'a ekle)
import '../models/earthquake.dart';

class EarthquakeListItem extends StatelessWidget {
  final Earthquake earthquake;

  const EarthquakeListItem({Key? key, required this.earthquake})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm:ss'); // Tarih formatı

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      elevation: 3.0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: earthquake.getMagnitudeColor(),
          child: Text(
            earthquake.magnitude.toStringAsFixed(1), // Tek ondalık hane
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          earthquake.location,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          '${dateFormat.format(earthquake.dateTime)} - Derinlik: ${earthquake.depth.toStringAsFixed(1)} km',
        ),
        // İsteğe bağlı: Tıklanınca detay ekranına gitmek için onTap eklenebilir.
        // onTap: () {
        //   Navigator.push(context, MaterialPageRoute(builder: (context) => EarthquakeDetailScreen(earthquake: earthquake)));
        // },
      ),
    );
  }
}
