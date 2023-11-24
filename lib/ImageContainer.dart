import 'package:flutter/material.dart';
class ImageContainer extends StatefulWidget {
  const ImageContainer({Key? key,required this.L1}) : super(key: key);
 // ImageOptionRadio({Key? key,required this.description,required this.image}) : super(key: key);
  final List<Widget> L1;
  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: widget.L1.length,
      itemBuilder: (context, index) {
        return widget.L1[index];
      },
    );
  }
}
