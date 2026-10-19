class IotDevice {
  final String name;
  final String category;
  final String connectivity;
  final String thumbnail;
  final String description;
  final Map<String, String> specs;

  IotDevice({
    required this.name,
    required this.category,
    required this.connectivity,
    required this.thumbnail,
    required this.description,
    required this.specs,
  });
}

final List<IotDevice> dummyIotDevices = [
  IotDevice(
    name: 'Smart LED Bulb RGB',
    category: 'Pencahayaan',
    connectivity: 'Wi-Fi + Bluetooth',
    thumbnail:
        'https://images.unsplash.com/photo-1550985616-10810253b84d?w=600',
    description: 'Lampu pintar RGB yang dapat dikontrol dari jarak jauh via aplikasi smartphone, mendukung penjadwalan, kontrol suara (Google Assistant & Alexa), dan 16 juta warna.',
    specs: {
      'Daya': '9 Watt (Setara 60W)',
      'Protokol': 'Wi-Fi 2.4 GHz',
      'Tegangan': '220V - 240V',
      'Fitting': 'E27',
      'Garansi': '1 Tahun',
    },
  ),
  IotDevice(
    name: 'Smart Plug Wi-Fi',
    category: 'Kelistrikan',
    connectivity: 'Wi-Fi 2.4GHz',
    thumbnail:
        'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?w=600',
    description: 'Stopkontak pintar untuk mematikan dan menghidupkan peralatan elektronik rumah tangga secara otomatis, dilengkapi pemantau konsumsi daya listrik harian.',
    specs: {
      'Arus Maks': '16 Ampere',
      'Beban Maks': '3520 Watt',
      'Fitur': 'Power Monitoring, Timer',
      'Bahan': 'PC Anti-Fire V0',
      'Garansi': '1 Tahun',
    },
  ),
  IotDevice(
    name: 'Smart Door Lock Fingerprint',
    category: 'Keamanan',
    connectivity: 'Bluetooth & Zigbee',
    thumbnail:
        'https://images.unsplash.com/photo-1558002038-1055907df827?w=600',
    description: 'Kunci pintu digital pintar dengan sensor sidik jari semikonduktor cepat, PIN acak, kartu RFID, dan kunci mekanis darurat untuk keamanan ekstra rumah Anda.',
    specs: {
      'Kapasitas Fingerprint': '100 Sidik Jari',
      'Baterai': '4x AA Alkaline',
      'Fitur': 'Anti-Peeping PIN, Auto Lock',
      'Pintu': 'Kayu / Aluminium (35-50mm)',
      'Garansi': '2 Tahun',
    },
  ),
  IotDevice(
    name: 'Indoor CCTV Security Cam 360',
    category: 'Keamanan',
    connectivity: 'Wi-Fi 2.4GHz',
    thumbnail:
        'https://images.unsplash.com/photo-1557597774-9d273605dfa9?w=600',
    description: 'Kamera pengawas pintar dengan rotasi 360 derajat, resolusi 2K Ultra HD, night vision infrared, deteksi gerakan berbasis AI, serta komunikasi dua arah.',
    specs: {
      'Resolusi': '2K (2304 x 1296p)',
      'Sudut Pandang': '360° Horizontal, 108° Vertikal',
      'Penyimpanan': 'MicroSD up to 256GB / Cloud',
      'Fitur': 'AI Motion Detection, Two-way Audio',
      'Garansi': '1 Tahun',
    },
  ),
  IotDevice(
    name: 'Temperature & Humidity Sensor',
    category: 'Sensor',
    connectivity: 'Zigbee 3.0',
    thumbnail:
        'https://images.unsplash.com/photo-1581092160607-ee22621dd758?w=600',
    description: 'Sensor suhu dan kelembapan pintar berukuran ringkas yang dapat memicu pemicu otomatisasi (seperti menyalakan AC/dehumidifier) saat suhu ruangan berubah.',
    specs: {
      'Akurasi Suhu': '±0.3°C',
      'Akurasi Kelembapan': '±3%',
      'Baterai': 'CR2032 (Tahan 2 Tahun)',
      'Protokol': 'Zigbee 3.0 (Membutuhkan Gateway)',
      'Garansi': '1 Tahun',
    },
  ),
];
