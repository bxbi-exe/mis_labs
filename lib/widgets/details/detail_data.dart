import 'package:flutter/material.dart';
import 'package:mis_labs/models/clothing_model.dart';

class DetailData extends StatelessWidget {
  final int id;
  final Clothing clothing;

  const DetailData({super.key, required this.id, required this.clothing});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[80],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text(
              clothing.name,
              style: const TextStyle(
                  color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            tileColor: Colors.grey[80],
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Divider(color: Colors.black),
          ...clothing.details.map((detail) => ListTile(
            leading: const Icon(Icons.circle, color: Colors.black, size: 8),
            title: Text(
              detail,
              style: const TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          )),
        ],
      ),
    );
  }
}
