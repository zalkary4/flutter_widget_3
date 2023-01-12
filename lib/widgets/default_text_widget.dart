import 'package:flutter/material.dart';

class DefaultTextWidget extends StatelessWidget {
  const DefaultTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Flutter Map'),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 36,
              color: Colors.orange,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Flutter Mapp',
                  ),
                  Text(
                    'Flutter Mapp',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Flutter Mapp',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
