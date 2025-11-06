import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  // Contoh data awal
  String nama = 'Budi Santoso';
  String nim = '123456789';
  String prodi = 'S1 Informatika';
  String email = 'budi@example.com';
  String telepon = '08123456789';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profil')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Gambar dari assets
              ClipOval(
                child: Image.asset(
                  'assets/images/mahasiswa.jpg',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                initialValue: nama,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) => nama = value ?? '',
                validator: (value) => value == null || value.isEmpty
                    ? 'Nama tidak boleh kosong'
                    : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: nim,
                decoration: const InputDecoration(
                  labelText: 'NIM',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) => nim = value ?? '',
                validator: (value) => value == null || value.isEmpty
                    ? 'NIM tidak boleh kosong'
                    : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: prodi,
                decoration: const InputDecoration(
                  labelText: 'Prodi',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) => prodi = value ?? '',
                validator: (value) => value == null || value.isEmpty
                    ? 'Prodi tidak boleh kosong'
                    : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: email,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) => email = value ?? '',
                validator: (value) => value == null || value.isEmpty
                    ? 'Email tidak boleh kosong'
                    : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: telepon,
                decoration: const InputDecoration(
                  labelText: 'Telepon',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) => telepon = value ?? '',
                validator: (value) => value == null || value.isEmpty
                    ? 'Telepon tidak boleh kosong'
                    : null,
              ),
              const SizedBox(height: 20),

              // Tombol Simpan
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Profil berhasil diperbarui!'),
                        ),
                      );
                      Navigator.pop(context); // kembali ke halaman profil
                    }
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Simpan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
