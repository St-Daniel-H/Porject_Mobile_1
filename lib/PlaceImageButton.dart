import 'package:flutter/material.dart';
class PlaceImage extends StatefulWidget {
  PlaceImage({Key? key,required this.placeImage,required this.image}) : super(key: key);
  final Function placeImage;
  String image = "";
  bool selected = false;
  @override
  State<PlaceImage> createState() => _PlaceImageState();
}

class _PlaceImageState extends State<PlaceImage> {

  @override
  Widget build(BuildContext context) {

    return !(widget.image != "") ? Container(
      padding: EdgeInsets.all(10.0),
      height:150,
      width:150,// Adjust padding as needed
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Border color
          width: 2.0, // Border width
        ),
        borderRadius: BorderRadius.circular(8.0), // Adjust border radius as needed
      ),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            widget.selected = true;
            widget.placeImage();
          });

        },
        child: const Text("Select Image"),
      ),
    ) :  Container(
    //  padding: EdgeInsets.all(10.0),
      height:150,
      width:150,// Adjust padding as needed
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Border color
          width: 2.0, // Border width
        ),
        borderRadius: BorderRadius.circular(8.0), // Adjust border radius as needed
      ),
      child:GestureDetector(
        onTap: () {
          setState(() {
            widget.selected = true;
            widget.placeImage();
          });
        },
        child:Image.asset(widget.image,fit: BoxFit.cover),)
      );
  }
}
