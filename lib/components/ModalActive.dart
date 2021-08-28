import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_lagu/components/ContainerButton.dart';
import 'package:project_lagu/components/ListGambar.dart';

class ModalActive extends StatelessWidget {
  const ModalActive({
    Key? key,
    required this.tinggi,
  }) : super(key: key);

  final double tinggi;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: tinggi,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          BottomBarActive(),
          Expanded(
            child: ListView.builder(
              itemCount: laguActive.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContainerButton(gambar: laguActive[index]),
                      SvgPicture.asset("assets/Volume.svg", width: 50),
                      ContainerButton(gambar: "assets/trash.svg"),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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
