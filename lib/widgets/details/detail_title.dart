import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final int id;
  final String name;

  const DetailTitle({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      label: Text(
        name,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w600,
          color: Colors.grey[800],
        ),
      ),
      avatar: CircleAvatar(
        backgroundColor: Colors.grey[100],
        radius: 18,
        child: Text(
          id.toString(),
          style: TextStyle(
            color: Colors.grey[900],
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.black.withOpacity(0.3), width: 1),
      ),
      shadowColor: Colors.red.withOpacity(0.2),
      elevation: 4,
    );
  }
}
