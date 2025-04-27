// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/earthquake.dart';
import '../services/earthquake_service.dart';
import '../widgets/earthquake_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final EarthquakeService _earthquakeService = EarthquakeService();
  late Future<List<Earthquake>> _earthquakesFuture;

  @override
  void initState() {
    super.initState();
    _loadEarthquakes();
  }

  void _loadEarthquakes() {
    setState(() {
      _earthquakesFuture = _earthquakeService.fetchRecentEarthquakes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Son Depremler'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadEarthquakes, // Yenile butonu
            tooltip: 'Yenile',
          ),
        ],
      ),
      body: RefreshIndicator( // Aşağı çekerek yenileme
        onRefresh: () async {
           _loadEarthquakes();
        },
        child: FutureBuilder<List<Earthquake>>(
          future: _earthquakesFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Veri yüklenirken gösterilecek widget
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              // Hata durumunda gösterilecek widget
              return Center(child: Text('Hata oluştu: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              // Veri yoksa gösterilecek widget
              return const Center(child: Text('Gösterilecek deprem verisi bulunamadı.'));
            } else {
              // Veri başarıyla yüklendiyse listeyi göster
              final earthquakes = snapshot.data!;
              return ListView.builder(
                itemCount: earthquakes.length,
                itemBuilder: (context, index) {
                  return EarthquakeListItem(earthquake: earthquakes[index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}