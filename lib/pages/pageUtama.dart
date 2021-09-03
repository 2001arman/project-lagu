import 'package:flutter/material.dart';
import 'package:project_lagu/components/BottomBar.dart';
import 'package:project_lagu/components/DotIndicator.dart';
import 'package:project_lagu/components/ListGambar.dart';

import 'package:project_lagu/pages/Pages.dart';

import 'package:project_lagu/pages/constan.dart';

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
        bgColor = bgColorSatu;
      }
      if (index == 1) {
        bgColor = bgColorDua;
      }
      if (index == 2) {
        bgColor = bgColorTiga;
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
                      Pages(
                        activeIcon: activeIconSatu,
                        judulColor: judulColorSatu,
                        nonActiveIcon: nonActiveIconSatu,
                        gambar: gambarPageSatu,
                        dataActive: dataPageSatu,
                      ),
                      Pages(
                        activeIcon: activeIconDua,
                        judulColor: judulColorDua,
                        nonActiveIcon: nonActiveIconDua,
                        gambar: gambarPageDua,
                        dataActive: dataPageDua,
                      ),
                      Pages(
                        activeIcon: activeIconTiga,
                        judulColor: judulColorTiga,
                        nonActiveIcon: nonActiveIconTiga,
                        gambar: gambarPageTiga,
                        dataActive: dataPageTiga,
                      ),
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
