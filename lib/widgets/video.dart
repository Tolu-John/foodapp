import 'package:flutter/material.dart';
import 'package:foodrecipe/constants.dart';

class Video extends StatefulWidget {
  String bgImage;

  Video({super.key, required this.bgImage});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool _isloading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              widget.bgImage,
            ),
          ),
        ),
        if (_isloading)
          const CircularProgressIndicator(color: Colors.red)
        else
          GestureDetector(
            onTap: () {
              _isloading = !_isloading;
            },
            child: Image.asset(Constants.playImg, fit: BoxFit.cover),
          )
      ],
    );
  }
}
