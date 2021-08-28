import 'package:flutter/material.dart';
import 'package:project_lagu/components/ContainerIcon.dart';
import 'package:project_lagu/components/ContainerJudul.dart';
import 'package:project_lagu/components/DotIndicator.dart';
import 'package:project_lagu/components/ListGambar.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({
    Key? key,
  }) : super(key: key);

  static const bgColor = Color.fromRGBO(149, 237, 249, 1);
  static const nonActiveIcon = Color.fromRGBO(228, 255, 249, 1);
  static const dotColor = Color.fromRGBO(102, 198, 219, 1);
  static const judulColor = Color.fromRGBO(26, 129, 161, 1);
  static const activeIcon = Color.fromRGBO(31, 179, 199, 1);

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
            gambar: gambarPageSatu,
            dataActive: dataPageSatu,
            activeIcon: activeIcon,
          ),
        ),
      ],
    );
  }
}
