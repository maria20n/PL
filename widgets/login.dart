import 'package:flutter/material.dart';

import '../font.dart';

class LogInput extends StatelessWidget {
  const LogInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12.withOpacity(0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(icon, color: Color(0xFFFFC4A8), size: 25),
            ),
            hintStyle: BodyText,
          ),
          style: BodyText2,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
