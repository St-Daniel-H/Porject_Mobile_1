import 'package:flutter/material.dart';
import 'ImageHolder.dart';
import 'package:puzzle_game/ImageContainer.dart';
import 'PlaceImageButton.dart';
class Puzzle2x2 extends StatefulWidget {
  const Puzzle2x2({Key? key}) : super(key: key);

  @override
  State<Puzzle2x2> createState() => _Puzzle2x2State();
}

class _Puzzle2x2State extends State<Puzzle2x2> {
  String selectedValue = "1";
   void updateSelectedValue(value){
     setState(() {
       selectedValue = value;
     });
  }
  String imageBoxOne = "";
  void updateImageOne(){
    setState((){
      imageBoxOne="/2x2Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      ImageOptionRadio(description: "",valueOfRadio: "0",image: "/2x2Puzzle_1/1.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "1",image: "/2x2Puzzle_1/2.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "2",image: "/2x2Puzzle_1/3.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "3",image: "/2x2Puzzle_1/4.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("helloo"),
        centerTitle: true,
      ),
        body: Column(
          children: [
            Container(
              height:300, // Set a height for the container
              width:400,
              child: ImageContainer(L1: items),
            ),
            Row(
              children: [
                PlaceImage(placeImage: updateImageOne,image: imageBoxOne),
              ],
            ),
            Image.asset("/2x2Puzzle_1/${int.parse(selectedValue)+1}.jpg",width:100,height:100)
          ],

        )



    );
  }
}
