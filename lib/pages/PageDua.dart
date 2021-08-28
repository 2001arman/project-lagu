import 'package:flutter/material.dart';
import 'package:project_lagu/components/ContainerIcon.dart';
import 'package:project_lagu/components/ContainerJudul.dart';
import 'package:project_lagu/components/DotIndicator.dart';
import 'package:project_lagu/components/ListGambar.dart';

class PageDua extends StatelessWidget {
  const PageDua({
    Key? key,
  }) : super(key: key);

  static const bgColor = Color.fromRGBO(191, 162, 219, 1);
  static const nonActiveIcon = Color.fromRGBO(240, 217, 255, 1);
  static const dotColor = Color.fromRGBO(140, 88, 190, 1);
  static const judulColor = Color.fromRGBO(139, 96, 181, 1);
  static const activeIcon = Color.fromRGBO(106, 42, 148, 1);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ContainerJudul(
          size: size,
          text: "Alam",
          warna: judulColor,
        ),
        Expanded(
          child: ContainerIcon(
            nonActiveIcon: nonActiveIcon,
            gambar: gambarPageDua,
            dataActive: dataPageDua,
            activeIcon: activeIcon,
          ),
        ),
      ],
    );
  }
}
