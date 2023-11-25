import 'package:flutter/material.dart';
import 'Puzzle2x2.dart';
import 'Puzzle4x4.dart';
import 'Puzzle3x3.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Puzzle Game!"),
        centerTitle: true,
      ),
      body: Center(
          child:Column(
        children: [
          Container(
            child: const Text("Welcome to my puzzle Game! Please choose the difficulty to proceed",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                letterSpacing: 1.5,
              ),)
          ),
          const SizedBox(height: 100,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Puzzle2x2())
            );
          }, child:const Text("Easy",style: TextStyle(fontSize: 20.0,),),
            style: ElevatedButton.styleFrom(
              elevation: 5, // Elevation (shadow)
              fixedSize: Size(200, 50),
            )
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Puzzle3x3())
            );
          }, child:const Text("Medium",style: TextStyle(fontSize: 20.0,)),
              style: ElevatedButton.styleFrom(
                elevation: 5, // Elevation (shadow)
                fixedSize: Size(200, 50),
              )),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Puzzle4x4())
            );

          }, child:const Text("Hard",style: TextStyle(fontSize: 20.0,)),
              style: ElevatedButton.styleFrom(
                elevation: 5, // Elevation (shadow)
                fixedSize: Size(200, 50),
              )),

        ],
      ))
    );
  }
}
