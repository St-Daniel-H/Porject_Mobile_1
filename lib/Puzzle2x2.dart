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
  String selectedValue = "0";
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
  String imageBoxTwo = "";
  void updateImageTwo (){
    setState((){
      imageBoxTwo="/2x2Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBoxThree = "";
  void updateImageThree(){
    setState((){
      imageBoxThree="/2x2Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBoxFour = "";
  void updateImageFour(){
    setState((){
      imageBoxFour="/2x2Puzzle_1/${int.parse(selectedValue)+1}.jpg";
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


    void validateInput(){
      String text;
      if (imageBoxOne ==  "/2x2Puzzle_1/4.jpg" &&
          imageBoxTwo ==  "/2x2Puzzle_1/3.jpg" &&
          imageBoxThree ==  "/2x2Puzzle_1/2.jpg" &&
          imageBoxFour ==  "/2x2Puzzle_1/1.jpg" ) {
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
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Puzzle Game"),
        centerTitle: true,actions: [
        Tooltip(
            message: 'Solve puzzle',
            child: IconButton(
              onPressed: () {
                setState(() {
                  imageBoxOne =  "/2x2Puzzle_1/4.jpg";
                  imageBoxTwo =  "/2x2Puzzle_1/3.jpg" ;
                  imageBoxThree =  "/2x2Puzzle_1/2.jpg" ;
                  imageBoxFour =  "/2x2Puzzle_1/1.jpg" ;

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
                  imageBoxOne = "";
                  imageBoxTwo = "";
                  imageBoxThree = "";
                  imageBoxFour = "";
              });},
              icon: const Icon(
                Icons.restore,
              ),
            )),
      ],
      ),
        body: screenWidth>800 ? Column(

        children:[
          Row(
            children: [
              // First Container with ImageContainer
              Container(
                height: 250,
                width: 300,
                child: ImageContainer(L1: items),
              ),
              // Second Container with Column
              Container(
                padding: EdgeInsets.only(left: screenWidth / 7),
                child: Container(
                  padding: EdgeInsets.only(top:50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PlaceImage(placeImage: updateImageOne, image: imageBoxOne),
                          PlaceImage(placeImage: updateImageTwo, image: imageBoxTwo),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             PlaceImage(placeImage: updateImageThree, image: imageBoxThree),
                             PlaceImage(placeImage: updateImageFour, image: imageBoxFour),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            //padding: EdgeInsets.only(left: 50.0),
            child:  Image.asset("/2x2Puzzle_1/${int.parse(selectedValue)+1}.jpg",width:100,height:100),
          ),
        Align(
        alignment: Alignment.bottomRight,
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: ElevatedButton(
        onPressed: () {
        validateInput();
        },
        child: Text('Submit'),
        ),
        ),
         ),])
        : Column(

          children: [
            Container(
              height:180, // Set a height for the container
              //width:400,
              child: ImageContainer(L1: items),
            ),
            Container(
              child: Column(


                children: [
                  Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                      PlaceImage(placeImage: updateImageOne,image: imageBoxOne),
                      PlaceImage(placeImage: updateImageTwo,image: imageBoxTwo),
                    ],
                  )),
                  Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                      PlaceImage(placeImage: updateImageThree,image: imageBoxThree),
                      PlaceImage(placeImage: updateImageFour,image: imageBoxFour),
                    ],
                  )),
                ],
              ),),

            Container(
              child:  Image.asset("/2x2Puzzle_1/${int.parse(selectedValue)+1}.jpg",width:100,height:100),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        validateInput();
                      },
                      child: const Text('Submit'),
                    ))),
          ],
        )



    );
  }
}
