import 'package:flutter/material.dart';

class GradientButtonWidget extends StatefulWidget {
  const GradientButtonWidget({Key? key}) : super(key: key);

  @override
  _GradientButtonWidgetState createState() => _GradientButtonWidgetState();
}

class _GradientButtonWidgetState extends State<GradientButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0XFF0D47A1),
                        Color(0XFF1976D2),
                        Color(0XFF42A5F5),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(14),
                      textStyle: const TextStyle(fontSize: 12)),
                  onPressed: () {},
                  child: const Text('Gradient'))
            ],
          ),
        ),
      ),
    );
  }
}
