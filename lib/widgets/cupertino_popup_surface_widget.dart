import 'package:flutter/cupertino.dart';

class CupertinoPopupSurfaceWidget extends StatefulWidget {
  const CupertinoPopupSurfaceWidget({Key? key}) : super(key: key);

  @override
  _CupertinoPopupSurfaceWidgetState createState() =>
      _CupertinoPopupSurfaceWidgetState();
}

class _CupertinoPopupSurfaceWidgetState
    extends State<CupertinoPopupSurfaceWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('Click Me'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                  child: Container(
                    color: CupertinoColors.white,
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 400,
                    child: Center(
                      child: CupertinoButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
