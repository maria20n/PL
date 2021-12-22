import 'dart:ui';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black54, Colors.white],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/k.png',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black12,
            BlendMode.darken,
          ),
        )),
      ),
    );
  }
}
