import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    Key? key,
    required this.gambar,
  }) : super(key: key);

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: SvgPicture.asset(gambar),
    );
  }
}
