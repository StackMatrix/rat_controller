import 'package:flutter/material.dart';

class CustomTail extends StatelessWidget {
  const CustomTail({Key? key, required this.tailWidget,}) : super(key: key);
  final dynamic tailWidget;

  @override
  Widget build(BuildContext context) {
    return tailWidget == null ? const SizedBox(height: 0, width: 0,) : Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: tailWidget,
    );
  }
}