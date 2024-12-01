import 'package:flutter/material.dart';
import '../models/clothing_model.dart';
import '../services/hardcoded_dataprovider.dart';
import '../widgets/clothing/clothes_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Clothing> clothes = [];

  @override
  void initState() {
    super.initState();
    getHardcodedClothes();
  }

  void getHardcodedClothes() {
    HardCodedData.getClothes().then((clothesList) {
      setState(() {
        clothes = clothesList.map<Clothing>((clothing) {
          return Clothing(
            id: clothing.id,
            name: clothing.name,
            image: clothing.image,
            details: clothing.details,
          );
        }).toList();
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.black87, size: 24),
        ),
        title: const Text(
          "211041",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.black87, size: 24),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: ClothesList(clothes: clothes),
      ),
    );
  }
}
