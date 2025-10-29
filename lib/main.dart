import 'package:flutter/material.dart';

void main() {
  runApp(const DokterCintaApp());
}

class DokterCintaApp extends StatelessWidget {
  const DokterCintaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink[50],
        fontFamily: 'supercell',
      ),
      home: const DokterCintaHome(),
    );
  }
}

class DokterCintaHome extends StatelessWidget {
  const DokterCintaHome({super.key});

  void showNotif(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, textAlign: TextAlign.center),
        backgroundColor: Colors.pink[300],
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dokter Cinta 💘'),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.favorite, size: 80, color: Colors.pink),
            const SizedBox(height: 20),
            const Text(
  'Konsultasi dengan Dokter Cinta',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => showNotif(context, 'Saran: Cintailah dirimu dulu 💖'),
              child: const Text('Saran Cinta'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => showNotif(context, 'Diagnosis: Kamu lagi baper 😅'),
              child: const Text('Diagnosis Cinta'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => showNotif(context, 'Resep: Beri perhatian secukupnya 💌'),
              child: const Text('Resep Cinta'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => showNotif(context, 'Pesan Dokter: Jangan galau, kamu berharga 💫'),
              child: const Text('Pesan Dokter'),
            ),
          ],
        ),
      ),
    );
  }
}
