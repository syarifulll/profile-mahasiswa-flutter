import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class PengumumanPage extends StatelessWidget {
  const PengumumanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengumuman')),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Text(
              'Pengumuman Kampus',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.announcement),
              title: Text('Pendaftaran Magang'),
              subtitle: Text('Deadline: 10 November 2025'),
            ),
            ListTile(
              leading: Icon(Icons.announcement),
              title: Text('Ujian Akhir Semester'),
              subtitle: Text('Jadwal tersedia di website resmi'),
            ),
          ],
        ),
      ),
    );
  }
}
