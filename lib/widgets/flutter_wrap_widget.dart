import 'package:flutter/material.dart';

class FlutterWrapWidget extends StatefulWidget {
  const FlutterWrapWidget({Key? key}) : super(key: key);

  @override
  _FlutterWrapWidgetState createState() => _FlutterWrapWidgetState();
}

class _FlutterWrapWidgetState extends State<FlutterWrapWidget> {
  final Widget _image = Padding(
    padding: const EdgeInsets.all(8),
    child: Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg/1280px-Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg',
      height: 100,
      width: 130,
      fit: BoxFit.cover,
    ),
  );
  // final List<Widget> _list = [_image, _image, _image, _image];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: [
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
            _image,
          ],
        ),
      ),
    );
  }
}
