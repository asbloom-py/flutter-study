import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VideoDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Container(
          child: Text('画像'),
        ),
      ),
    );
  }
}
