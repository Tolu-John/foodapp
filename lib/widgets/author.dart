import 'package:flutter/material.dart';
import 'package:foodrecipe/constants.dart';
class Author extends StatefulWidget {
  String image;
  String name;
  String location;

  Author(
      {super.key,
        required this.image,
        required this.name,
        required this.location});

  @override
  State<Author> createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
  bool _isFollowing = false;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Image.asset(
            widget.image,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: textTheme.bodyLarge,
              ),
              Row(
                children: [
                  Image.asset(
                    FrConstants.locationImage,
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    widget.location,
                    style: textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ]),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isFollowing = !_isFollowing;

            });

          },

          style: ElevatedButton.styleFrom(
            backgroundColor: _isFollowing ? Colors.transparent : Colors.red,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(_isFollowing ? 'Following' : FrConstants.fwText),
        ),
      ],
    );
  }

}


