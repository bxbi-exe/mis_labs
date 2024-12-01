import 'package:flutter/material.dart';
import 'package:mis_labs/models/clothing_model.dart';
import 'package:mis_labs/widgets/clothing/clothes_card.dart';

class ClothesList extends StatefulWidget {
  final List<Clothing> clothes;
  const ClothesList({super.key, required this.clothes});

  @override
  State<ClothesList> createState() => _ClothesListState();
}

class _ClothesListState extends State<ClothesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      itemCount: widget.clothes.length,
      itemBuilder: (context, index) {
        final clothing = widget.clothes[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: ClothesCard(
            id: clothing.id,
            name: clothing.name,
            image: clothing.image,
          ),
        );
      },
    );
  }
}
