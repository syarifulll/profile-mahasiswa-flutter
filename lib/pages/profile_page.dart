import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa')),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Menggunakan gambar dari assets
                    ClipOval(
                      child: Image.asset(
                        'assets/images/mahasiswa.jpg', // ganti dengan nama file foto
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Table(
                        columnWidths: const {
                          0: IntrinsicColumnWidth(),
                          1: FlexColumnWidth(),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'Nama:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'Budi Santoso',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'NIM:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  '123456789',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'Prodi:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'S1 Informatika',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'Email:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'budi@example.com',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'Telepon:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  '08123456789',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/edit_profile');
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
