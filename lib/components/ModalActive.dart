import 'package:flutter/material.dart';
import 'package:project_lagu/components/BottomActive.dart';
import 'package:project_lagu/components/ContainerButton.dart';
import 'package:project_lagu/components/ListGambar.dart';
import 'package:project_lagu/components/Volume.dart';

class ModalActive extends StatefulWidget {
  const ModalActive({
    Key? key,
    required this.tinggi,
  }) : super(key: key);

  final double tinggi;

  @override
  _ModalActiveState createState() => _ModalActiveState();
}

class _ModalActiveState extends State<ModalActive> {
  double _valueVolume = 20;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: widget.tinggi,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerButton(gambar: laguActive[index]),
                      Volume(index: index),
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
