import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteWidget extends StatefulWidget {
  const CupertinoPageRouteWidget({Key? key}) : super(key: key);

  @override
  _CupertinoPageRouteWidgetState createState() =>
      _CupertinoPageRouteWidgetState();
}

class _CupertinoPageRouteWidgetState extends State<CupertinoPageRouteWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton.filled(
          child: const Text('Click for page 2'),
          onPressed: () => Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (BuildContext context) {
                return const PageTwo();
              },
            ),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Page two'),
      ),
    );
  }
}
