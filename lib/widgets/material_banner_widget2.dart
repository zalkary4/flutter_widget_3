import 'package:flutter/material.dart';

class MaterialBannerWidget2 extends StatelessWidget {
  const MaterialBannerWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
            padding: const EdgeInsets.all(20),
            content: const Text('Subscribe'),
            leading: const Icon(Icons.notification_important_outlined),
            elevation: 5,
            backgroundColor: Colors.white12,
            actions: <Widget>[
              TextButton(
                child: const Text('Dismiss'),
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
              )
            ],
          ));
        },
        child: const Text('Open'),
      ),
    );
  }
}
