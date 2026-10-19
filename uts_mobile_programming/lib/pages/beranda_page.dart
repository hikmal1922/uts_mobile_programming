import 'package:flutter/material.dart';

import '../models/iot_model.dart';
import 'detail_iot_page.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header Card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF0F172A),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Smart Home IoT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.sensors, color: Color(0xFF0EA5E9), size: 30),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Cari perangkat IoT apa untuk rumahmu?',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari perangkat (mis. Smart Plug)',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF0EA5E9),
                    ),
                    suffixIcon: const Icon(
                      Icons.tune,
                      color: Color(0xFF0EA5E9),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1E293B),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Kategori IoT
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _kategoriItem(Icons.lightbulb, 'Cahaya'),
              _kategoriItem(Icons.power, 'Listrik'),
              _kategoriItem(Icons.security, 'Keamanan'),
              _kategoriItem(Icons.thermostat, 'Sensor'),
            ],
          ),
          const SizedBox(height: 20),

          // Section IoT Populer
          const Text(
            'Perangkat Populer',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dummyIotDevices.length,
              itemBuilder: (context, index) {
                final device = dummyIotDevices[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailIotPage(device: device),
                      ),
                    );
                  },
                  child: Container(
                    width: 160,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(device.thumbnail),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          // Section Rekomendasi
          const Text(
            'Rekomendasi Perangkat',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ...dummyIotDevices.map((device) => _iotCard(context, device)),
        ],
      ),
    );
  }

  Widget _kategoriItem(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFE0F2FE),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: const Color(0xFF0369A1)),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _iotCard(BuildContext context, IotDevice device) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              device.thumbnail,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  device.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  device.category,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  device.connectivity,
                  style: const TextStyle(
                    color: Color(0xFF0EA5E9),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0EA5E9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailIotPage(device: device),
                ),
              );
            },
            child: const Text(
              'Detail',
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
