import 'package:e_commerce_demo/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: CircleAvatar(
        radius: 14,
        backgroundColor: textColor.withOpacity(0.12),
        child: Icon(
          icon,
          color: textColor,
          size: 16,
        ),
      ),
    );
  }
}
