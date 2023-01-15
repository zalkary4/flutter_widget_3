import 'package:flutter/material.dart';

class HeroWidget2 extends StatelessWidget {
  const HeroWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Hero(
        tag: 'tag-1',
        child: Icon(Icons.person),
      ),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SecondPage222(),
        ),
      ),
      title: const Text('click on me'),
    );
  }
}

class SecondPage222 extends StatelessWidget {
  const SecondPage222({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'tag-1',
              child: Container(
                color: Colors.orangeAccent,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
