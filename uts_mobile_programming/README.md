# SmartIoT - Aplikasi Katalog & Spesifikasi Perangkat IoT

Aplikasi **SmartIoT** adalah aplikasi mobile berbasis Flutter yang menyajikan katalog perangkat *Internet of Things* (IoT) lengkap beserta spesifikasi teknisnya. Aplikasi ini dirancang dengan antarmuka yang bersih (*clean interface*), responsif, dan mudah digunakan untuk membantu pengguna mengenal berbagai perangkat *Smart Home* dan otomatisasi.

---

## 📱 Daftar Halaman dan Fitur

1. **Navigasi Utama (`MainNavigation`)**
   - Menggunakan `BottomNavigationBar` untuk berpindah antarhalaman secara efisien.
   - Mengintegrasikan Halaman Beranda dan Katalog IoT.

2. **Halaman Beranda (`BerandaPage`)**
   - **Header Card & Pencarian:** Menampilkan bilah pencarian produk dan sapaan pengguna.
   - **Kategori IoT:** Tombol ikon cepat untuk memfilter kategori (Cahaya, Listrik, Keamanan, Sensor).
   - **Perangkat Populer:** *Horizontal scrollable list* untuk menampilkan produk terpopuler.
   - **Rekomendasi Perangkat:** *Vertical list* yang menampilkan rekomendasi perangkat IoT secara ringkas.

3. **Halaman Daftar IoT (`DaftarIotPage`)**
   - Menampilkan seluruh katalog perangkat IoT dalam bentuk *List View* terstruktur.
   - Setiap item menampilkan gambar *thumbnail*, nama produk, kategori, tipe konektivitas, serta tombol **Detail**.

4. **Halaman Detail IoT (`DetailIotPage`)**
   - Menampilkan gambar produk resolusi penuh dengan tombol navigasi kembali (*back button*).
   - **Spesifikasi Teknis:** Kartu informasi detail seperti Daya, Protokol, Tegangan, Fitur Utama, dan Garansi.
   - **Deskripsi Produk:** Penjelasan lengkap mengenai fungsi dan keunggulan perangkat.

---

## 🛠️ Langkah-Langkah Menjalankan Aplikasi

Berikut panduan untuk menjalankan proyek aplikasi ini di komputer lokal:

### 1. Prasyarat Sistem
- Flutter SDK (versi 3.0.0 atau yang lebih baru)
- Android Studio / Visual Studio Code (dengan ekstensi Flutter & Dart)
- Emulator Android atau Perangkat HP Fisik (dengan fitur *Developer Mode* & *USB Debugging* aktif)

### 2. Kloning Repositori
Buka terminal dan jalankan perintah:
```bash
git clone [https://github.com/hikmal1922/uts_mobile_programming.git](https://github.com/hikmal1922/uts_mobile_programming.git)
cd NAMA-REPOSITORI