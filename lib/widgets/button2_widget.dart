import 'package:flutter/cupertino.dart';

class Button2Widget extends StatelessWidget {
  const Button2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      width: 41,
      decoration: const BoxDecoration(
        color: Color(0xffd6d6d6),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Color(0xff565656),
            offset: Offset(
              5,
              5,
            ),
          ),
          BoxShadow(
            blurRadius: 10,
            color: Color(0xffffffff),
            offset: Offset(
              -5,
              -5,
            ),
          ),
        ],
        gradient: LinearGradient(
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffe5e5e5), Color(0xffc1c1c1)],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(9),
        ),
      ),
    );
  }
}
