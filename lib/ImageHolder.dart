import 'package:flutter/material.dart';

class ImageOptionRadio extends StatefulWidget {
  ImageOptionRadio({Key? key,required this.getSelectedOption,required this.updateSelectedOption,required this.valueOfRadio,required this.optionGroup,required this.description,required this.image}) : super(key: key);
  final String valueOfRadio;
  final String description;
  final String optionGroup;
  final String getSelectedOption;
  final  updateSelectedOption;
  final String image;
  @override
  State<ImageOptionRadio> createState() => _ImageOptionRadioState();
}

class _ImageOptionRadioState extends State<ImageOptionRadio> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 100,
        child:RadioListTile(
        title: Text(widget.description),
        value: widget.valueOfRadio,
        groupValue:widget.getSelectedOption,
        onChanged: (value) {
          setState(() {
            widget.updateSelectedOption(value.toString());
          });
        },
        secondary: Container(
          child: Image.asset(widget.image,height:50,width:50),
        ), // Replace with your image asset path
      ),
    );
  }
}

