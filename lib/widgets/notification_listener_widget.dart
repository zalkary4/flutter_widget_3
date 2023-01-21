//!NotificationListener
import 'package:flutter/material.dart';

class NotificationListenerWidget extends StatefulWidget {
  const NotificationListenerWidget({Key? key}) : super(key: key);

  @override
  _NotificationListenerWidgetState createState() =>
      _NotificationListenerWidgetState();
}

class _NotificationListenerWidgetState
    extends State<NotificationListenerWidget> {
  String message = 'New';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(message),
          ),
        ),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollnotification) {
              if (scrollnotification is ScrollStartNotification) {
                setState(() {
                  message = 'Scroll started';
                });
              } else if (scrollnotification is ScrollUpdateNotification) {
                setState(() {
                  message = 'Scroll Update';
                });
              } else if (scrollnotification is ScrollNotification) {
                setState(() {
                  message = 'Scroll Ended';
                });
              }
              return true;
            },
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item: $index'),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
