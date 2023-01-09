import 'package:flutter/material.dart';

class NumerFismDisagnet extends StatefulWidget {
  const NumerFismDisagnet({Key? key}) : super(key: key);

  @override
  NumerFismDisagnetState createState() => NumerFismDisagnetState();
}

class NumerFismDisagnetState extends State<NumerFismDisagnet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(45),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            // borderRadius: BorderRadius.circular(12),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade800,
                offset: const Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/732px-Apple_logo_black.svg.png?20220821121934',
            height: 120,
            color: Colors.blue[700],
          ),
        ),
      ),
    );
  }
}
