import 'package:flutter/material.dart';
import 'package:project_lagu/components/ListGambar.dart';

class Volume extends StatefulWidget {
  const Volume({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child: Slider(
          activeColor: Colors.red,
          inactiveColor: Colors.grey[300],
          value: valueVolume[laguActive[widget.index]],
          min: 0,
          max: 100,
          onChanged: (value) {
            setState(() {
              valueVolume[laguActive[widget.index]] = value;
              print(valueVolume);
            });
          }),
    );
  }
}
