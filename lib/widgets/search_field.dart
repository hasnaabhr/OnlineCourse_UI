import 'package:flutter/material.dart';

class Search_field extends StatelessWidget {
  const Search_field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: 2000,
        height: 52,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Search',
              style: TextStyle(color: Colors.black, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
