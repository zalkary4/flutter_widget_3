import 'package:flutter/cupertino.dart';

class CupertinoPageScaffoldWidget extends StatefulWidget {
  const CupertinoPageScaffoldWidget({Key? key}) : super(key: key);

  @override
  _CupertinoPageScaffoldWidgetState createState() =>
      _CupertinoPageScaffoldWidgetState();
}

class _CupertinoPageScaffoldWidgetState
    extends State<CupertinoPageScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 18, 32, 47),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.6),
        middle: const Text('flutter Mapp'),
      ),
      child: Stack(
        children: [
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg/1280px-Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ],
      ),
    );
  }
}
