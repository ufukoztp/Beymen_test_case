# Flutter Projesi

Bu proje, Flutter kullanarak geliştirilmiş ve aşağıdaki modern teknolojilerle desteklenmiş bir mobil uygulamadır. Clean mimari kullanılarak yapılandırılmıştır.

## İçindekiler

- [Başlarken](#başlarken)
- [Kurulum](#kurulum)
- [Proje Yapısı](#proje-yapısı)
- [Kullanılan Teknolojiler](#kullanılan-teknolojiler)

## Başlarken

Bu proje, Flutter SDK kullanılarak oluşturulmuştur. Uygulamanın yerel ortamınızda çalıştırılması için aşağıdaki adımları izleyin.

## Kurulum

# Repoyu klonlayın
git clone https://github.com/ufukoztp/Beymen_test_case.git

# Proje dizinine gidin
cd Beymen_test_case

# Gerekli paketleri yükleyin
flutter pub get

# Uygulamayı çalıştırın
flutter run

## Proje Yapısı
```
lib/
├── core/
│   ├── cache/                # Local Database Yönetimi
│   ├── constants/            # Uygulama Constantları
│   ├── extensions/           # Extensionslar'ın yönetimi
│   └── helper/               # Yardımcı sınıflar ve fonksiyonlar
├── common/
│   ├── base/                 # Base yapılar
│   ├── init/                 # Dependency Injection Yönetimi
│   └── network/              # Http İstekleri Yönetimi
│   └── router/               # Routing Yönetimi
│   └── widget/               # Atomic Widget'lar
│
├── features/
│   ├── data/                 # Bloc ve Cubit'ler
│   │   └──── models/         # Response modeller
│   │   └──── repositories/   # Repository'ler
│   │   └──── services/       # Http Istekleri
│   │
│   ├── domain/
│   │   └──── entities/       # Entity modeller
│   │   └──── repositories/   # Soyut Repository'ler
│   │   └──── services/       # Soyut Http Istekleri
│   │
│   ├── presentation/
│       └──── widgets/        # Ekranlara özel widgetlar
│       └──── cubit/          # Bloc ve Cubit'ler
│       └──── mixinler/       # Ekranlara özel mixinler
│       └──── view/           # Ekranlar
│
└── main.dart  # Uygulama giriş noktası
```

# Kullanılan Teknolojiler
```
  State Management: flutter_bloc
  Model Generation: freezed
  HTTP Client: dio
  Dependency Injection: get_it
  Routing: go_router
  Local Database: hive
  Asset Management: flutter_gen
  Barcode Scan: flutter_barcode_scanner
  Responsive UI: flutter_screenutil
  Network Image: extended_image
  Architecture: Clean Architecture, Atomic Widget
```

# Global Cubit

Projemizde, barkod'dan dönen id'ye göre gelen veriyi filtreleyip kaydetmek için global bir Cubit kullanıyoruz. Bu Cubit, uygulamanın her yerinden erişilebilir ve tüm ürün listesini tutar.

# Beymen_test_case
