import 'package:flutter/material.dart';
import 'pages/dashboard_page.dart';
import 'pages/profile_page.dart';
import 'pages/edit_profile_page.dart'; // <-- pastikan ini ditambahkan
import 'pages/jadwal_page.dart';
import 'pages/nilai_page.dart';
import 'pages/kegiatan_page.dart';
import 'pages/pengumuman_page.dart';
import 'pages/pengaturan_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Profil Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/dashboard',
      routes: {
        '/dashboard': (context) => const DashboardPage(),
        '/profile': (context) => const ProfilePage(),
        '/edit_profile': (context) => EditProfilePage(),
        '/jadwal': (context) => const JadwalPage(),
        '/nilai': (context) => const NilaiPage(),
        '/kegiatan': (context) => const KegiatanPage(),
        '/pengumuman': (context) => const PengumumanPage(),
        '/pengaturan': (context) => const PengaturanPage(),
      },
    );
  }
}
