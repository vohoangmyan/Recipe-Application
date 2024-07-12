import 'package:flutter/material.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    return  Row(
      children: [
        Text('Giấc mơ to\ntrong căn bếp nhỏ', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: w*.07,
          height: 1,
        ),),
        const Spacer()
      ],
    );
  }
}
