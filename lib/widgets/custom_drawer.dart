import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // ===== HEADER =====
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0D47A1), Color(0xFF1976D2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/mahasiswa.jpg',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Budi Santoso',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '123456789',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),

            // ===== MENU =====
            _buildMenuItem(
              context,
              icon: Icons.dashboard,
              label: 'Dashboard',
              route: '/dashboard',
              color: Colors.indigo,
            ),
            _buildMenuItem(
              context,
              icon: Icons.person,
              label: 'Profil Mahasiswa',
              route: '/profile',
              color: Colors.blueAccent,
            ),
            _buildMenuItem(
              context,
              icon: Icons.schedule,
              label: 'Jadwal Kuliah',
              route: '/jadwal',
              color: Colors.deepPurple,
            ),
            _buildMenuItem(
              context,
              icon: Icons.grade,
              label: 'Nilai',
              route: '/nilai',
              color: Colors.green,
            ),
            _buildMenuItem(
              context,
              icon: Icons.group,
              label: 'Kegiatan / Organisasi',
              route: '/kegiatan',
              color: Colors.orange,
            ),
            _buildMenuItem(
              context,
              icon: Icons.announcement,
              label: 'Pengumuman',
              route: '/pengumuman',
              color: Colors.teal,
            ),
            const Divider(),
            _buildMenuItem(
              context,
              icon: Icons.settings,
              label: 'Pengaturan',
              route: '/pengaturan',
              color: Colors.grey,
            ),

            const SizedBox(height: 20),

            // ===== LOGOUT BUTTON =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton.icon(
                onPressed: () async {
                  final keluar = await showDialog<bool>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Konfirmasi"),
                      content: const Text("Apakah Anda yakin ingin keluar?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, false),
                          child: const Text("Batal"),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, true),
                          child: const Text("Ya"),
                        ),
                      ],
                    ),
                  );

                  // Jika user menekan YA → kembali ke SplashScreen
                  if (keluar == true) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/splash', // pastikan route ini sudah terdaftar di main.dart
                      (route) => false, // hapus semua route sebelumnya
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                icon: const Icon(Icons.logout, color: Colors.white),
                label: const Text(
                  'Keluar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  // ===== FUNGSI ITEM MENU =====
  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String route,
    required Color color,
  }) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: Colors.grey,
        ),
      ),
    );
  }
}
