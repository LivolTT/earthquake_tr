// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Ana ekranı import et

void main() {
  runApp(const DepremTakipApp());
}

class DepremTakipApp extends StatelessWidget {
  const DepremTakipApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deprem Takip',
      theme: ThemeData(
        // Modern bir görünüm için renk paleti ve tema ayarları
        primarySwatch: Colors.blueGrey, // Ana renk
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true, // Material 3 tasarımını kullan
        brightness: Brightness.light, // Açık tema (veya Brightness.dark)
         appBarTheme: AppBarTheme(
           backgroundColor: Colors.blueGrey[700],
           foregroundColor: Colors.white, // AppBar yazı rengi
         )
        // Diğer tema özelleştirmeleri eklenebilir
      ),
      debugShowCheckedModeBanner: false, // Debug banner'ını kaldır
      home: const HomeScreen(), // Uygulama başlangıç ekranı
    );
  }
}