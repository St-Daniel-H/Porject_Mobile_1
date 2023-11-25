import 'package:flutter/material.dart';
import 'ImageHolder.dart';
import 'package:puzzle_game/ImageContainer.dart';
import 'PlaceImageButton.dart';
class Puzzle4x4 extends StatefulWidget {
  const Puzzle4x4({Key? key}) : super(key: key);

  @override
  State<Puzzle4x4> createState() => _Puzzle2x2State();
}

class _Puzzle2x2State extends State<Puzzle4x4> {
  String selectedValue = "0";
  void updateSelectedValue(value){
    setState(() {
      selectedValue = value;
    });
  }
  String imageBox1 = "";
  void updateImage1(){
    setState((){
      imageBox1="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox2 = "";
  void updateImage2 (){
    setState((){
      imageBox2="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox3 = "";
  void updateImage3(){
    setState((){
      imageBox3="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox4 = "";
  void updateImage4(){
    setState((){
      imageBox4="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox5 = "";
  void updateImage5(){
    setState((){
      imageBox5="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox6 = "";
  void updateImage6 (){
    setState((){
      imageBox6="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox7 = "";
  void updateImage7(){
    setState((){
      imageBox7="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox8 = "";
  void updateImage8(){
    setState((){
      imageBox8="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox9 = "";
  void updateImage9(){
    setState((){
      imageBox9="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox10 = "";
  void updateImage10 (){
    setState((){
      imageBox10="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox11 = "";
  void updateImage11(){
    setState((){
      imageBox11="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox12 = "";
  void updateImage12(){
    setState((){
      imageBox12="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox13 = "";
  void updateImage13(){
    setState((){
      imageBox13="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox14 = "";
  void updateImage14 (){
    setState((){
      imageBox14="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox15 = "";
  void updateImage15(){
    setState((){
      imageBox15="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  String imageBox16 = "";
  void updateImage16(){
    setState((){
      imageBox16="/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg";
    });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      ImageOptionRadio(description: "",valueOfRadio: "0",image: "/4x4Puzzle_1/1.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "1",image: "/4x4Puzzle_1/2.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "2",image: "/4x4Puzzle_1/3.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "3",image: "/4x4Puzzle_1/4.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "4",image: "/4x4Puzzle_1/5.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "5",image: "/4x4Puzzle_1/6.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "6",image: "/4x4Puzzle_1/7.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "7",image: "/4x4Puzzle_1/8.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "8",image: "/4x4Puzzle_1/9.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "9",image: "/4x4Puzzle_1/10.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "10",image: "/4x4Puzzle_1/11.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "11",image: "/4x4Puzzle_1/12.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "12",image: "/4x4Puzzle_1/13.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "13",image: "/4x4Puzzle_1/14.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "14",image: "/4x4Puzzle_1/15.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),
      ImageOptionRadio(description: "",valueOfRadio: "15",image: "/4x4Puzzle_1/16.jpg",optionGroup: "1",getSelectedOption: selectedValue,updateSelectedOption: updateSelectedValue),

    ];
    void validateInput(){
      String text;
      if (
          imageBox1 ==  "/4x4Puzzle_1/16.jpg" &&
          imageBox2 ==  "/4x4Puzzle_1/15.jpg" &&
          imageBox3 ==  "/4x4Puzzle_1/14.jpg" &&
          imageBox4 ==  "/4x4Puzzle_1/13.jpg" &&
          imageBox5 ==  "/4x4Puzzle_1/12.jpg" &&
          imageBox6 ==  "/4x4Puzzle_1/11.jpg" &&
          imageBox7 ==  "/4x4Puzzle_1/10.jpg" &&
          imageBox8 ==  "/4x4Puzzle_1/9.jpg" &&
          imageBox9 ==  "/4x4Puzzle_1/8.jpg" &&
          imageBox10 == "/4x4Puzzle_1/7.jpg" &&
          imageBox11 == "/4x4Puzzle_1/6.jpg" &&
          imageBox12 == "/4x4Puzzle_1/5.jpg" &&
          imageBox13 == "/4x4Puzzle_1/4.jpg" &&
          imageBox14 == "/4x4Puzzle_1/3.jpg" &&
          imageBox15 == "/4x4Puzzle_1/2.jpg" &&
          imageBox16 == "/4x4Puzzle_1/1.jpg"
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
                    imageBox1 =  "/4x4Puzzle_1/16.jpg";
                    imageBox2 =  "/4x4Puzzle_1/15.jpg" ;
                    imageBox3 =  "/4x4Puzzle_1/14.jpg" ;
                    imageBox4 =  "/4x4Puzzle_1/13.jpg" ;
                    imageBox5 =  "/4x4Puzzle_1/12.jpg" ;
                    imageBox6 =  "/4x4Puzzle_1/11.jpg" ;
                    imageBox7 =  "/4x4Puzzle_1/10.jpg" ;
                    imageBox8 =  "/4x4Puzzle_1/9.jpg" ;
                    imageBox9 =  "/4x4Puzzle_1/8.jpg" ;
                    imageBox10 = "/4x4Puzzle_1/7.jpg" ;
                    imageBox11 = "/4x4Puzzle_1/6.jpg" ;
                    imageBox12 = "/4x4Puzzle_1/5.jpg" ;
                    imageBox13 = "/4x4Puzzle_1/4.jpg" ;
                    imageBox14 = "/4x4Puzzle_1/3.jpg" ;
                    imageBox15 = "/4x4Puzzle_1/2.jpg" ;
                    imageBox16 = "/4x4Puzzle_1/1.jpg";
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
                    imageBox10 = "";
                    imageBox11 = "";
                    imageBox12 = "";
                    imageBox13 = "";
                    imageBox14 = "";
                    imageBox15 = "";
                    imageBox16 = "";
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
                      PlaceImage(placeImage: updateImage4,image: imageBox4),
                    ],
                  )),
                  Container(
                    height:150,
                      child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PlaceImage(placeImage: updateImage5,image: imageBox5),
                      PlaceImage(placeImage: updateImage6,image: imageBox6),
                      PlaceImage(placeImage: updateImage7,image: imageBox7),
                      PlaceImage(placeImage: updateImage8,image: imageBox8),
                    ],

                  )),
                  Container(
                      height:150,
                      child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PlaceImage(placeImage: updateImage9,image: imageBox9),
                      PlaceImage(placeImage: updateImage10,image: imageBox10),
                      PlaceImage(placeImage: updateImage11,image: imageBox11),
                      PlaceImage(placeImage: updateImage12,image: imageBox12),
                    ],
                  )),
                  Container(
                    height:150,
                      child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PlaceImage(placeImage: updateImage13,image: imageBox13),
                      PlaceImage(placeImage: updateImage14,image: imageBox14),
                      PlaceImage(placeImage: updateImage15,image: imageBox15),
                      PlaceImage(placeImage: updateImage16,image: imageBox16),
                    ],
                  )),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 50.0),
              child:  Image.asset("/4x4Puzzle_1/${int.parse(selectedValue)+1}.jpg",width:100,height:100),
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
