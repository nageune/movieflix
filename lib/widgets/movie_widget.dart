import 'package:flutter/material.dart';
import 'package:movieflix/screens/detail_screen.dart';

class Movie extends StatelessWidget {
  final String posterPath, title;
  final int id;

  const Movie({
    super.key,
    required this.posterPath,
    required this.title,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailScreen(title: title, posterPath: posterPath, id: id),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.3),
                  )
                ]),
            width: 250,
            child: Image.network(
              posterPath,
              headers: const {
                "User-Agent":
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
              },
            ),
          ),
        ],
      ),
    );
  }
}
