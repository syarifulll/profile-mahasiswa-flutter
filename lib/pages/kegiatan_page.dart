import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class KegiatanPage extends StatelessWidget {
  const KegiatanPage({super.key});

  final List<Map<String, String>> kegiatanList = const [
    {'nama': 'UKM Sepak Bola', 'role': 'Anggota aktif sejak 2022', 'icon': '⚽'},
    {'nama': 'Band Kampus', 'role': 'Gitaris dan vokalis', 'icon': '🎸'},
    {
      'nama': 'Organisasi Sosial',
      'role': 'Relawan kegiatan sosial',
      'icon': '🤝',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kegiatan / Organisasi')),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Kegiatan Mahasiswa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: kegiatanList.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final kegiatan = kegiatanList[index];
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.blue.shade100,
                        child: Text(
                          kegiatan['icon'] ?? '',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      title: Text(
                        kegiatan['nama'] ?? '',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        kegiatan['role'] ?? '',
                        style: const TextStyle(fontSize: 14),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                        // Bisa ditambahkan navigasi ke detail kegiatan
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
