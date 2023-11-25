import 'package:flutter/material.dart';
import 'ImageHolder.dart';
import 'package:puzzle_game/ImageContainer.dart';
import 'PlaceImageButton.dart';
class Puzzle3x3 extends StatefulWidget {
  const Puzzle3x3({Key? key}) : super(key: key);

  @override
  State<Puzzle3x3> createState() => _Puzzle2x2State();
}

class _Puzzle2x2State extends State<Puzzle3x3> {
  String selectedValue = "0";
  void updateSelectedValue(value){
    setState(() {
      selectedValue = value;
    });
  }
  String imageBox1 = "";
  void updateImage1(){
    setState((){
      imageBox1="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox2 = "";
  void updateImage2 (){
    setState((){
      imageBox2="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox3 = "";
  void updateImage3(){
    setState((){
      imageBox3="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox4 = "";
  void updateImage4(){
    setState((){
      imageBox4="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox5 = "";
  void updateImage5(){
    setState((){
      imageBox5="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox6 = "";
  void updateImage6 (){
    setState((){
      imageBox6="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox7 = "";
  void updateImage7(){
    setState((){
      imageBox7="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox8 = "";
  void updateImage8(){
    setState((){
      imageBox8="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox9 = "";
  void updateImage9(){
    setState((){
      imageBox9="/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      ImageOptionRadio(description: "",valueOfRadio: "0",image: "/3x3Puzzle_1/1.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "1",image: "/3x3Puzzle_1/2.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "2",image: "/3x3Puzzle_1/3.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "3",image: "/3x3Puzzle_1/4.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "4",image: "/3x3Puzzle_1/5.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "5",image: "/3x3Puzzle_1/6.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "6",image: "/3x3Puzzle_1/7.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "7",image: "/3x3Puzzle_1/8.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "8",image: "/3x3Puzzle_1/9.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),

    ];
    void validateInput(){
      String text;
      if (
      imageBox1 ==  "/3x3Puzzle_1/9.jpg" &&
          imageBox2 ==  "/3x3Puzzle_1/8.jpg" &&
          imageBox3 ==  "/3x3Puzzle_1/7.jpg" &&
          imageBox4 ==  "/3x3Puzzle_1/6.jpg" &&
          imageBox5 ==  "/3x3Puzzle_1/5.jpg" &&
          imageBox6 ==  "/3x3Puzzle_1/4.jpg" &&
          imageBox7 ==  "/3x3Puzzle_1/3.jpg" &&
          imageBox8 ==  "/3x3Puzzle_1/2.jpg" &&
          imageBox9 ==  "/3x3Puzzle_1/1.jpg"
      ) {
        text = "Winner, congrats!";
      }else{
        text="Loser, try again";
      }
      final snackBar = SnackBar(
        content: Text(text), // Your message here
        duration: Duration(seconds: 2), // Optional: Set the duration for how long the SnackBar should be displayed
      );

      // Find the nearest Scaffold and show the SnackBar
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text("Puzzle Game"),
          centerTitle: true,actions: [
          Tooltip(
              message: 'Solve puzzle',
              child: IconButton(
                onPressed: () {
                  setState(() {
                    imageBox1 =  "/3x3Puzzle_1/9.jpg";
                    imageBox2 =  "/3x3Puzzle_1/8.jpg" ;
                    imageBox3 =  "/3x3Puzzle_1/7.jpg" ;
                    imageBox4 =  "/3x3Puzzle_1/6.jpg" ;
                    imageBox5 =  "/3x3Puzzle_1/5.jpg" ;
                    imageBox6 =  "/3x3Puzzle_1/4.jpg" ;
                    imageBox7 =  "/3x3Puzzle_1/3.jpg" ;
                    imageBox8 =  "/3x3Puzzle_1/2.jpg" ;
                    imageBox9 =  "/3x3Puzzle_1/1.jpg" ;
                  });},
                icon: const Icon(
                  Icons.check_circle,
                ),
              )),
          // displays reset icon in AppBar
          Tooltip(
              message: 'Reset selection',
              child: IconButton(
                onPressed: () {
                  setState(() {
                    selectedValue = "0";
                    imageBox1 = "";
                    imageBox2 = "";
                    imageBox3 = "";
                    imageBox4 = "";
                    imageBox5 = "";
                    imageBox6 = "";
                    imageBox7 = "";
                    imageBox8 = "";
                    imageBox9 = "";
                  });},
                icon: const Icon(
                  Icons.restore,
                ),
              )),
        ],
        ),
        body: Center(
          child:Row(
            children: [
              Container(

                child: ImageContainer(L1: items),
              ),
              Container(
                height:600, // Set a height for the container
                width:800,
                child: ListView(

                  children: [
                    Container(
                        height:150,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PlaceImage(placeImage: updateImage1,image: imageBox1),
                            PlaceImage(placeImage: updateImage2,image: imageBox2),
                            PlaceImage(placeImage: updateImage3,image: imageBox3),
                          ],
                        )),
                    Container(
                        height:150,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PlaceImage(placeImage: updateImage4,image: imageBox4),
                            PlaceImage(placeImage: updateImage5,image: imageBox5),
                            PlaceImage(placeImage: updateImage6,image: imageBox6),

                          ],

                        )),
                    Container(
                        height:150,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PlaceImage(placeImage: updateImage7,image: imageBox7),
                            PlaceImage(placeImage: updateImage8,image: imageBox8),
                            PlaceImage(placeImage: updateImage9,image: imageBox9),
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50.0),
                child:  Image.asset("/3x3Puzzle_1/${int.parse(selectedValue)+1}.jpg",width:100,height:100),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          validateInput();
                        },
                        child: Text('Submit'),
                      ))),

            ],
          ),
        )



    );
  }
}
