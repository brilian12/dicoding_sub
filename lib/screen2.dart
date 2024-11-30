import 'package:dicoding_sub/screen1.dart';
import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: Image.asset(
              'images/poster.jpeg', // Ganti dengan path gambar Anda
              height: 500.0,
              width: double.infinity,
              fit: BoxFit.cover, // Memastikan gambar memenuhi container
            ),
          ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Jatuh cinta seperti di film',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Jatuh Cinta Seperti di Film-Film adalah film komedi romantis Indonesia yang bercerita tentang Bagus, seorang penulis skenario yang bertemu kembali dengan teman masa SMA-nya, Hana, setelah sekian lama tidak bertemu. Bagus terinspirasi untuk menulis naskah film mengenai kisah cintanya dengan Hana, yang baru saja berkabung karena kehilangan suaminya. Film ini dibintangi oleh Ringgo Agus Rahman, Nirina Zubir, Sheila Dara Aisha, Dion Wiyoko, Julie Estelle, dan Alex Abbad. Film ini disutradarai oleh Yandy Laurens dan menggunakan konsep visual hitam putih.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Center(
            child: OutlinedButton(
              child: const Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}