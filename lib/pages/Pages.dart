import 'package:flutter/material.dart';
import 'package:project_lagu/components/ContainerIcon.dart';
import 'package:project_lagu/components/ContainerJudul.dart';
import 'package:project_lagu/components/ListGambar.dart';

class Pages extends StatelessWidget {
  const Pages({
    Key? key,
    required this.nonActiveIcon,
    required this.judulColor,
    required this.activeIcon,
    required this.gambar,
    required this.dataActive,
  }) : super(key: key);

  final Color nonActiveIcon, judulColor, activeIcon;
  final List<String> gambar;
  final List<bool> dataActive;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ContainerJudul(
          size: size,
          text: "Hujan",
          warna: judulColor,
        ),
        Expanded(
          child: ContainerIcon(
            nonActiveIcon: nonActiveIcon,
            activeIcon: activeIcon,
            gambar: gambar,
            dataActive: dataActive,
          ),
        ),
      ],
    );
  }
}
