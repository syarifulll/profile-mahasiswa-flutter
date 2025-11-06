import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class NilaiPage extends StatelessWidget {
  const NilaiPage({super.key});

  final List<Map<String, String>> nilaiList = const [
    {'matkul': 'Analisis Data', 'nilai': 'A'},
    {'matkul': 'Pemrograman Mobile', 'nilai': 'B+'},
    {'matkul': 'Kecerdasan Buatan', 'nilai': 'A-'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nilai Mahasiswa')),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Daftar Nilai Semester 7',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  headingRowColor: MaterialStateProperty.all(
                    Colors.blue.shade100,
                  ),
                  columns: const [
                    DataColumn(
                      label: Text(
                        'Mata Kuliah',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Nilai',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: nilaiList
                      .map(
                        (nilai) => DataRow(
                          cells: [
                            DataCell(Text(nilai['matkul']!)),
                            DataCell(Text(nilai['nilai']!)),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
