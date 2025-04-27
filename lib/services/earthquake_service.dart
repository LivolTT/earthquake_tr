// lib/services/earthquake_service.dart
import '../models/earthquake.dart';

class EarthquakeService {
  // Şimdilik örnek (mock) veri döndüren bir fonksiyon.
  // TODO: Gerçek bir API'ye (örneğin Kandilli Rasathanesi, USGS) bağlanıp veri çek.
  Future<List<Earthquake>> fetchRecentEarthquakes() async {
    // Simülasyon için kısa bir bekleme süresi
    await Future.delayed(const Duration(seconds: 1));

    // Örnek veriler (Bunları gerçek API verileriyle değiştir)
    return [
      Earthquake(
          id: '1',
          magnitude: 4.5,
          location: 'GÖKSUN (KAHRAMANMARAŞ)',
          dateTime: DateTime.now().subtract(const Duration(minutes: 15)),
          depth: 7.2),
      Earthquake(
          id: '2',
          magnitude: 3.2,
          location: 'EGE DENİZİ',
          dateTime: DateTime.now().subtract(const Duration(hours: 1)),
          depth: 10.0),
       Earthquake(
          id: '3',
          magnitude: 5.8,
          location: 'PÜLÜMÜR (TUNCELİ)',
          dateTime: DateTime.now().subtract(const Duration(hours: 3)),
          depth: 5.0),
       Earthquake(
          id: '4',
          magnitude: 2.8,
          location: 'AKDENİZ',
          dateTime: DateTime.now().subtract(const Duration(hours: 5)),
          depth: 15.5),
    ];
  }
}