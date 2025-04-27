// lib/models/earthquake.dart
import 'package:flutter/material.dart';

class Earthquake {
  final String id; // Benzersiz ID (API'den gelirse)
  final double magnitude; // Büyüklük
  final String location; // Yer (Örn: "GÖKSUN (KAHRAMANMARAŞ)")
  final DateTime dateTime; // Tarih ve Saat
  final double depth; // Derinlik (km)

  Earthquake({
    required this.id,
    required this.magnitude,
    required this.location,
    required this.dateTime,
    required this.depth,
  });

  // İleride API'den gelen JSON verisini parse etmek için bir factory constructor eklenebilir.
  // factory Earthquake.fromJson(Map<String, dynamic> json) { ... }

  // Büyüklüğe göre renk döndüren yardımcı fonksiyon
  Color getMagnitudeColor() {
    if (magnitude < 3.0) {
      return Colors.green;
    } else if (magnitude < 5.0) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
}