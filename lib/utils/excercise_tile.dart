import 'package:flutter/material.dart';

class ExcerciseTile extends StatelessWidget {
  final IconData icon;
  final String excerciseName;
  final String numberOfExcercises;
  final Color color;

  const ExcerciseTile({super.key, required this.icon, required this.excerciseName, required this.numberOfExcercises, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              )),
          subtitle: Text(numberOfExcercises),
          title: Text(
            excerciseName,
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
