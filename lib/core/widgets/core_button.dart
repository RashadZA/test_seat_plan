import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoreButton extends CupertinoButton {
  const CoreButton({
    super.key,
    super.color,
    double defaultBorderRadius = 15,
    required super.child,
    super.onPressed,
    super.alignment,
    super.padding = EdgeInsets.zero,
    super.borderRadius =
    const BorderRadius.all(Radius.circular(10)),
  }) : super(
    minSize: 0,
    disabledColor: Colors.transparent,
    pressedOpacity: 0.6,
  );
}