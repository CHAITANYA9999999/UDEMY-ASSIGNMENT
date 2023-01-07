import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Texts extends StatelessWidget {
  final String _text;
  Texts(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(_text),
    );
  }
}
