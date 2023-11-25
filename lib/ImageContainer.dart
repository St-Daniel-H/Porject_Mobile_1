import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key, required this.L1}) : super(key: key);

  final List<Widget> L1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0, // Set the desired height
      width: double.infinity, // Set the width to match the parent width
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Number of items per row
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        padding: const EdgeInsets.all(10),
        itemCount: L1.length,
        itemBuilder: (context, index) {
          return L1[index];
        },
      ),
    );
  }
}
