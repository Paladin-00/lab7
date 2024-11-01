import 'package:flutter/material.dart';

class V21 extends StatefulWidget {
  @override
  State<V21> createState() => _V21State();
}

class _V21State extends State<V21> {
  double _red = 0;
  double _green = 0;
  double _blue = 0;

  _onChangeRed(double value) {
    setState(() {
      _red = value;
    });
  }

  _onChangeGreen(double value) {
    setState(() {
      _green = value;
    });
  }
  _onChangeBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Red: "),
            Text(_red.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _red, min: 0, max: 255, onChanged: _onChangeRed),
        Row(
          children: [
            const Text("Green: "),
            Text(_green.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _green, min: 0, max: 255, onChanged: _onChangeGreen),
        Row(
          children: [
            const Text("Blue: "),
            Text(_blue.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _blue, min: 0, max: 255, onChanged: _onChangeBlue),

        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Color.fromRGBO(
                  _red.toInt(),
                  _green.toInt(),
                  _blue.toInt(),
                  1,
              ),
    // borderRadius: BorderRadius.all(Radius.circular(_radius))
          ),
        )
      ],
    );
  }
}