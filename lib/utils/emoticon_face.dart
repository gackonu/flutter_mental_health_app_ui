import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emojiFace;

  const EmoticonFace({super.key, required this.emojiFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 70,
      // width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[600],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Text(
          emojiFace,
          style: const TextStyle(fontSize: 35),
        )),
      ),
    );
  }
}
