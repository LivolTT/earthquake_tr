# Deprem Takip Uygulaması (Flutter)

Türkiye ve çevresindeki son depremleri gösteren basit, modern ve açık kaynaklı bir mobil uygulama projesi.

![Uygulama Ekran Görüntüsü (Eklenecek)](placeholder.png) ## 🚀 Proje Amacı

Bu proje, hem Flutter ile mobil uygulama geliştirme pratiği yapmak hem de deprem verilerine kolayca erişilebilecek bir araç sunmak amacıyla başlatılmıştır. Aynı zamanda, projenin geliştirilmesi ve sürdürülmesi için **GitHub Sponsors** aracılığıyla destek toplama hedefi bulunmaktadır.

## ✨ Özellikler (Planlanan)

* [x] Son depremlerin listelenmesi (Mock data ile başlangıç)
* [ ] Gerçek zamanlı veri çekme (Kandilli Rasathanesi veya USGS API entegrasyonu)
* [ ] Deprem detaylarını görme (Harita üzerinde konum, vb.)
* [ ] Büyüklük, konum veya tarihe göre filtreleme/sıralama
* [ ] Belirli bir büyüklüğün üzerindeki depremler için bildirim gönderme (Push Notification)
* [ ] Harita üzerinde deprem odaklarını gösterme
* [ ] Kullanıcı dostu ve modern arayüz

## 💻 Teknoloji Stack'i

* **Flutter:** Cross-platform mobil uygulama geliştirme framework'ü
* **Dart:** Programlama dili
* **Devlet Meteoroloji İşleri Genel Müdürlüğü (DMİ) / Kandilli Rasathanesi ve Deprem Araştırma Enstitüsü (KOERI) / USGS API (Entegre Edilecek):** Deprem verisi kaynağı
* **intl:** Tarih/saat formatlama
* **(Gelecekte Eklenebilecekler):** http (API istekleri için), provider/riverpod/bloc (State Management), Maps_flutter (Harita), firebase_messaging (Bildirimler)

## 🔧 Başlangıç

1.  **Projeyi Klonla:**
    ```bash
    git clone [https://github.com/](https://github.com/)[LivolTT]/earthquake_tr.git
    cd earthquake_tr
    ```
2.  **Bağımlılıkları Yükle:**
    ```bash
    flutter pub get
    ```
3.  **Uygulamayı Çalıştır:**
    * Bir emülatör veya fiziksel cihaz bağladığından emin ol.
    * ```bash
        flutter run
        ```

## ❤️ Destek Ol & Sponsorluk

Bu projenin geliştirilmesi, API kullanım maliyetleri (eğer olursa), sunucu masrafları (bildirimler vb. için gerekirse) ve geliştirme sürecine ayrılan zaman için finansal desteğe ihtiyaç duyulmaktadır.

Eğer bu projeyi faydalı buluyorsanız ve gelişimine katkıda bulunmak isterseniz, **GitHub Sponsors** üzerinden destek olabilirsiniz. Desteğiniz, projenin daha hızlı ilerlemesine ve yeni özellikler eklenmesine büyük katkı sağlayacaktır.

[![GitHub Sponsor](https://img.shields.io/badge/Sponsor-%E2%9D%A4-%23db61a2?logo=GitHub)](https://github.com/sponsors/[LivolTT])
## 🤝 Katkıda Bulunma

Katkıda bulunmak isterseniz (hata bildirimi, özellik önerisi, kod katkısı), lütfen bir "Issue" açın veya "Pull Request" gönderin. Katkılarınız memnuniyetle karşılanır!

## 📄 Lisans

Bu proje [MIT Lisansı](LICENSE) altında lisanslanmıştır. (Projeye bir `LICENSE` dosyası eklemeyi unutma, MIT popüler bir seçenektir.)

---
