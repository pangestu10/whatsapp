import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  int _selectedIndex = 0;

  // Daftar halaman untuk tiap tab bawah
  final List<Widget> _pages = [
    // ✅ Tab 1: Chats (default list teman)
    ListView.builder(
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

    // ✅ Tab 2: Status
    const Center(
      child: Text(
        'Status belum ada',
        style: TextStyle(color: Colors.white),
      ),
    ),

    // ✅ Tab 3: Panggilan
    const Center(
      child: Text(
        'Belum ada panggilan',
        style: TextStyle(color: Colors.white),
      ),
    ),

    // ✅ Tab 4: Profil
    const Center(
      child: Text(
        'Profil Saya',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigasi tambahan jika ingin pindah halaman penuh
    if (index == 3) {
      Navigator.pushNamed(context, '/user'); // ke user page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121B22),
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
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.message, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1F2C34),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white70,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
