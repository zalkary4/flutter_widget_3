import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInImage.assetNetwork(placeholder: "null", image: "null"),
      ),
    );
  }
}
