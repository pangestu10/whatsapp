import 'package:flutter/material.dart';

class WhatsAppChatPage extends StatefulWidget {
  const WhatsAppChatPage({super.key});

  @override
  State<WhatsAppChatPage> createState() => _WhatsAppChatPageState();
}

class _WhatsAppChatPageState extends State<WhatsAppChatPage> {
  final List<String> messages = ['Halo!', 'Apa kabar?', 'Lagi ngoding nih 😄'];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      messages.add(_controller.text.trim());
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F2C34),
        title: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/user'); // 👈 pindah ke UserPage
          },
          child: const Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage('https://i.pravatar.cc/150?img=5'),
              ),
              SizedBox(width: 10),
              Text(
                'Teman Chat',
                style: TextStyle(
                  color: Colors.white, // 👈 teks jadi putih
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white), // back icon putih
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final isMe = index.isEven;
                return Align(
                  alignment:
                      isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: isMe
                          ? Colors.green[600]
                          : const Color(0xFF1F2C34),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      messages[index],
                      style: const TextStyle(color: Colors.white), // teks chat putih
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            color: const Color(0xFF1F2C34),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: const TextStyle(color: Colors.white), // input teks putih
                    decoration: const InputDecoration(
                      hintText: 'Ketik pesan...',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.green),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
