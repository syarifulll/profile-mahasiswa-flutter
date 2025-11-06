import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Card welcome
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      'Selamat Datang di Aplikasi Profil Mahasiswa',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),

                    // Tombol navigasi cepat - baris 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildQuickButton(
                          context,
                          Icons.person,
                          'Profile',
                          '/profile',
                        ),
                        _buildQuickButton(
                          context,
                          Icons.schedule,
                          'Jadwal',
                          '/jadwal',
                        ),
                        _buildQuickButton(
                          context,
                          Icons.grade,
                          'Nilai',
                          '/nilai',
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Tombol navigasi cepat - baris 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildQuickButton(
                          context,
                          Icons.group,
                          'Kegiatan',
                          '/kegiatan',
                        ),
                        _buildQuickButton(
                          context,
                          Icons.announcement,
                          'Pengumuman',
                          '/pengumuman',
                        ),
                        _buildQuickButton(
                          context,
                          Icons.settings,
                          'Pengaturan',
                          '/pengaturan',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickButton(
    BuildContext context,
    IconData icon,
    String label,
    String route,
  ) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Icon(icon, size: 32, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
