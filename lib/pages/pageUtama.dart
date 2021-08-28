import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_lagu/components/BottomBar.dart';
import 'package:project_lagu/components/ContainerButton.dart';
import 'package:project_lagu/components/ContainerIcon.dart';
import 'package:project_lagu/components/ContainerJudul.dart';
import 'package:project_lagu/components/DotIndicator.dart';
import 'package:project_lagu/pages/PageDua.dart';
import 'package:project_lagu/pages/PageSatu.dart';
import 'package:project_lagu/pages/PageTiga.dart';

class PageUtama extends StatefulWidget {
  const PageUtama({Key? key}) : super(key: key);

  @override
  _PageUtamaState createState() => _PageUtamaState();
}

class _PageUtamaState extends State<PageUtama> {
  int _pageSekarang = 0;
  final PageController _pageController = PageController(initialPage: 0);
  static Color bgColor = Color.fromRGBO(149, 237, 249, 1);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChange(int index) {
    setState(() {
      _pageSekarang = index;
      if (index == 0) {
        bgColor = Color.fromRGBO(149, 237, 249, 1);
      }
      if (index == 1) {
        bgColor = Color.fromRGBO(191, 162, 219, 1);
      }
      if (index == 2) {
        bgColor = Color.fromRGBO(30, 174, 152, 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: bgColor,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        color: bgColor,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: _onPageChange,
                    controller: _pageController,
                    children: [
                      PageSatu(),
                      PageDua(),
                      PageTiga(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: size.height * 0.15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        if (i == _pageSekarang)
                          DotIndicator(active: true)
                        else
                          DotIndicator(active: false)
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}
