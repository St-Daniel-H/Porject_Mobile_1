import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key, required this.L1}) : super(key: key);

  final List<Widget> L1;

  @override
  Widget build(BuildContext context) {
    int itemCount = L1.length;
    int crossAxisCount = itemCount == 16 ? 8 : 4;
    double containerWidth = 0;
    if(L1.length == 16){
      crossAxisCount = 3;
      containerWidth= 400.0;
    }else if(L1.length == 4){
      crossAxisCount = 2;
      containerWidth= 800.0;
    }else if(L1.length == 9){
      crossAxisCount = 3;
      containerWidth= 400.0;
    }
    return Container(
      height: 1000.0,
      width: containerWidth,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0,
          childAspectRatio: 2,
        ),
        padding: const EdgeInsets.all(5),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return SizedBox(
            height:10,
            // width:200,
            child: L1[index],
          );
        },
      ),
    );
  }
}
