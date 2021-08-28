import 'package:flutter/material.dart';
import 'package:project_lagu/components/ContainerIcon.dart';
import 'package:project_lagu/components/ContainerJudul.dart';
import 'package:project_lagu/components/DotIndicator.dart';
import 'package:project_lagu/components/ListGambar.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({
    Key? key,
  }) : super(key: key);

  static const bgColor = Color.fromRGBO(30, 174, 152, 1);
  static const nonActiveIcon = Color.fromRGBO(187, 248, 232, 1);
  static const dotColor = Color.fromRGBO(35, 119, 106, 1);
  static const judulColor = Color.fromRGBO(14, 137, 118, 1);
  static const activeIcon = Color.fromRGBO(19, 108, 86, 1);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ContainerJudul(
          size: size,
          text: "Relaks",
          warna: judulColor,
        ),
        Expanded(
          child: ContainerIcon(
            nonActiveIcon: nonActiveIcon,
            gambar: gambarPageTiga,
            dataActive: dataPageTiga,
            activeIcon: activeIcon,
          ),
        ),
      ],
    );
  }
}
