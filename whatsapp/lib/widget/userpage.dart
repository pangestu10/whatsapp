import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'Profil Pengguna',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF1F2C34),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Teman Chat',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Status: Lagi online 😎',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.call, color: Colors.green),
              title: const Text(
                'Panggilan suara',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            const Divider(color: Colors.white12),
            ListTile(
              leading: const Icon(Icons.videocam, color: Colors.green),
              title: const Text(
                'Panggilan video',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            const Divider(color: Colors.white12),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.green),
              title: const Text(
                'Info dan nomor telepon',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                '+62 812 3456 7890',
                style: TextStyle(color: Colors.white70),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
