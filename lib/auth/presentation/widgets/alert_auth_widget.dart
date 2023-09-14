import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget
{
  final String title; 
  final String content; 

  const AlertWidget({required this.title, 
  required this.content, Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
              child: const Text('OK'),
            ),
          ],
        );
  }
}