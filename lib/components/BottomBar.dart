import 'package:flutter/material.dart';
import 'package:project_lagu/components/ContainerButton.dart';
import 'package:project_lagu/components/ListGambar.dart';
import 'package:project_lagu/components/ModalActive.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
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
          if (laguActive.isNotEmpty)
            ContainerButton(gambar: "assets/alarm.svg"),
          if (laguActive.isEmpty) ContainerButton(gambar: "assets/play.svg"),
          ContainerButton(gambar: "assets/alarm.svg"),
          InkWell(
            onTap: () {
              if (laguActive.isNotEmpty) {
                double tinggi = 70;
                tinggi += laguActive.length * 70;
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ModalActive(tinggi: tinggi);
                  },
                );
              }
            },
            child: ContainerButton(gambar: "assets/up-arrow.svg"),
          ),
        ],
      ),
    );
  }
}
