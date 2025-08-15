import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final void Function()? ontap;
  const MyButton({super.key, required this.icon,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: EdgeInsets.all(12),
        child: Icon(icon),
      ),
    );
  }
}
