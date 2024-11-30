import 'package:dicoding_sub/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {

  final List<Map<String, String>> movies = [
    {
      'title': 'Jatuh cinta seperti di film',
      'poster': 'images/poster.jpeg',
    },
    {
      'title': 'The Godfather',
      'poster': 'images/poster.jpeg',
    },
    {
      'title': 'The Dark Knight',
      'poster': 'images/poster.jpeg',
    },
    {
      'title': 'Pulp Fiction',
      'poster': 'images/poster.jpeg',
    },
    {
      'title': 'Forrest Gump',
      'poster': 'images/poster.jpeg',
    },
    {
      'title': 'Koala Kumal',
      'poster': 'images/poster.jpeg',
    },
    {
      'title': 'Komik 8',
      'poster': 'images/poster.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Film"),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return screen2();
                    }));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        movies[index]['poster']!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        movies[index]['title']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}