import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jadwal Kuliah')),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Jadwal Kuliah Semester 7',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Card pembungkus tabel
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Table(
                    defaultColumnWidth: const IntrinsicColumnWidth(),
                    border: TableBorder.all(color: Colors.grey.shade300),
                    children: [
                      // Header
                      TableRow(
                        decoration: BoxDecoration(color: Colors.blue.shade100),
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Hari',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Mata Kuliah',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Jam',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Baris data
                      _buildTableRow('Senin', 'Analisis Data', '08:00 - 10:00'),
                      _buildTableRow(
                        'Selasa',
                        'Pemrograman Mobile',
                        '10:00 - 12:00',
                      ),
                      _buildTableRow(
                        'Rabu',
                        'Kecerdasan Buatan',
                        '13:00 - 15:00',
                      ),
                      _buildTableRow(
                        'Kamis',
                        'Sistem Informasi',
                        '09:00 - 11:00',
                      ),
                      _buildTableRow(
                        'Jumat',
                        'Jaringan Komputer',
                        '11:00 - 13:00',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String hari, String matkul, String jam) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(hari, style: const TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(matkul, style: const TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(jam, style: const TextStyle(fontSize: 14)),
        ),
      ],
    );
  }
}
