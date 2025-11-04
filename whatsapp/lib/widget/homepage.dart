import 'package:flutter/material.dart';

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF1F2C34),
        actions: const [
          Icon(Icons.camera_alt, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
            ),
            title: Text(
              'Teman ${index + 1}',
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'Pesan terakhir...',
              style: TextStyle(color: Colors.white70),
            ),
            trailing: const Text(
              '12:30',
              style: TextStyle(color: Colors.white60),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/chat');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.message, color: Colors.white),
      ),
    );
  }
}
