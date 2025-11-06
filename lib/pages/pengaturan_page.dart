import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class PengaturanPage extends StatelessWidget {
  const PengaturanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengaturan')),
      drawer: const CustomDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Pengaturan Aplikasi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.color_lens, color: Colors.blue),
              title: const Text('Tema'),
              subtitle: const Text('Pilih mode terang atau gelap'),
              trailing: Switch(
                value: true,
                activeColor: Colors.blue,
                onChanged: (val) {
                  // logika ganti tema
                },
              ),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.lock, color: Colors.green),
              title: const Text('Ubah Password'),
              subtitle: const Text('Ganti password akun Anda'),
              trailing: ElevatedButton(
                onPressed: () {
                  // logika ubah password
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('Ubah'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
