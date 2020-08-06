import 'package:flutter/material.dart';
import 'package:foodflash/widgets/title.dart';

class BottomNavigationIcon extends StatelessWidget {

  final String text, image;

  const BottomNavigationIcon({Key key, this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: <Widget>[
          Image.asset('images/$image', width: 20, height: 20,),
          SizedBox(height: 2,),
          CustomText(text: text)
        ],
      ),
    );
  }
}
