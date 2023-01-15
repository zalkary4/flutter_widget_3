import 'package:flutter/material.dart';

class IndexedStackWidget1 extends StatefulWidget {
  const IndexedStackWidget1({Key? key}) : super(key: key);

  @override
  _IndexedStackWidget1State createState() => _IndexedStackWidget1State();
}

class _IndexedStackWidget1State extends State<IndexedStackWidget1> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      index = 0;
                    },
                  );
                },
                child: const Text('0'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      index = 1;
                    },
                  );
                },
                child: const Text('1'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      index = 2;
                    },
                  );
                },
                child: const Text('2'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          IndexedStack(
            index: index,
            children: [
              Center(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitMrAHTkiAxa7gRbhZ-SjYNj7hyNeVVavow&usqp=CAU'),
              ),
              Center(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoS1tyvZy6nEcYCoSe308nToLh0FpZRmYlAb1Sl470TzJOS3z91bvna9It3TK6BBMxUOs&usqp=CAU'),
              ),
              Center(
                child: Image.network(
                    'data:image/jpeg;base64,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'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
