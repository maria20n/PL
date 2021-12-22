import 'package:flutter/material.dart';

import '../font.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonText,
    @required this.onpressed,
  }) : super(key: key);

  final String buttonText;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFFFFC4A8), borderRadius: BorderRadius.circular(16)),
      child: FlatButton(
        onPressed: onpressed,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              buttonText,
              style: TextStyle(
                fontFamily: 'Bebas',
                fontSize: 20,
                color: Colors.black54,
              ),
            )),
      ),
    );
  }
}
