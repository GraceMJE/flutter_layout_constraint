import 'package:flutter/material.dart';

const assetImagePath = 'assets/images';
const bannerImage = '$assetImagePath/banner.png';

void main() {
  runApp(
    MaterialApp(
      home: HomeWidget(),
      ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstraintsWidget(),
    );
  }
}


class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              minHeight: 200,
              minWidth: 200,
              maxHeight: 250,
              maxWidth: 250
            ),
            // 사이즈 간단하게 주는 방법_자식객체 따름
            // BoxConstraints.loose(Size(,))
            // BoxConstraints.tight(Size(,))
            width: 300,
            height: 300,
            color: Colors.red,
          ),
        ),
      );
  }
}
