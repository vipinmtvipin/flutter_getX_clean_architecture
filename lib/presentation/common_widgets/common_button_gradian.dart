import 'package:flutter/material.dart';

class CommonButtonGradian extends StatelessWidget {

  final String _text;
  final String _bold;
  final Color _color;
  final Function _fn;

  const CommonButtonGradian(this._text,this._bold,this._color,this._fn, {super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
    height: 45.0,
    margin: const EdgeInsets.all(10),
    child: ElevatedButton(
      onPressed: _fn as void Function()?,
    style: ElevatedButton.styleFrom(
        onPrimary: Colors.black87,
        primary: Colors.grey[300],
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        )),
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff374ABE), Color(0xff64B6FF)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30.0)),
        child: Container(
          constraints:
          const BoxConstraints(maxWidth: 250.0, minHeight: 45.0),
          alignment: Alignment.center,
          child: Text(
            _text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0,color: _color,
                fontWeight: _bold == 'bold' ?  FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
    ),
  );
  }
}