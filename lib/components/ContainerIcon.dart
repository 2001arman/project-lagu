import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:project_lagu/components/ListGambar.dart';

class ContainerIcon extends StatefulWidget {
  const ContainerIcon({
    Key? key,
    required this.nonActiveIcon,
    required this.gambar,
    required this.dataActive,
    required this.activeIcon,
  }) : super(key: key);

  final Color nonActiveIcon, activeIcon;
  final List<String> gambar;
  final List<bool> dataActive;

  @override
  _ContainerIconState createState() => _ContainerIconState();
}

class _ContainerIconState extends State<ContainerIcon> {
  AudioPlayer audioPlayer = AudioPlayer();

  _onIconClick(int index) {
    if (widget.dataActive[index] == true) {
      widget.dataActive[index] = false;
      laguActive.remove(widget.gambar[index]);
      valueVolume.remove(widget.gambar[index]);
      audioPlayer.stop();
    } else {
      widget.dataActive[index] = true;
      laguActive.add(widget.gambar[index]);
      // laguActive[widget.gambar[index]] = 20;
      valueVolume[widget.gambar[index]] = 20.0;
      // try {
      //   play(index);
      // } catch (e) {
      //   print(e.toString());
      // }
    }
    print(valueVolume);
    setState(() {});
  }

  // Future play(int index) async {
  //   print(assetLagu[index]);
  //   await audioPlayer.play(assetLagu[index].toString(), isLocal: true);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 75,
          mainAxisSpacing: 40,
        ),
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              _onIconClick(index);
            },
            child: Container(
              width: 100,
              height: 100,
              child: SvgPicture.asset(
                widget.gambar[index],
                color: widget.dataActive[index]
                    ? widget.activeIcon
                    : widget.nonActiveIcon,
              ),
            ),
          );
        },
        itemCount: widget.gambar.length,
      ),
    );
  }
}
