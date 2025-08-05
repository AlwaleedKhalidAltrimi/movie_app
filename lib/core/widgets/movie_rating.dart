import 'package:flutter/material.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Text('⭐'),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toStringAsFixed(1),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text('($count)',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              )),
        )
      ],
    );
  }
}
