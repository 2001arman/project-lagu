import 'package:flutter/material.dart';
import 'package:project_lagu/components/ContainerButton.dart';

class BottomBarActive extends StatelessWidget {
  const BottomBarActive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // height: 900,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ContainerButton(gambar: "assets/play.svg"),
          ContainerButton(gambar: "assets/alarm.svg"),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: ContainerButton(gambar: "assets/down-arrow.svg"),
          ),
        ],
      ),
    );
  }
}
