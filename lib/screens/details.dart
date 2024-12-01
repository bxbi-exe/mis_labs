import 'package:flutter/material.dart';
import 'package:mis_labs/models/clothing_model.dart';
import 'package:mis_labs/services/hardcoded_dataprovider.dart';

import '../widgets/details/detail_back_button.dart';
import '../widgets/details/detail_data.dart';
import '../widgets/details/detail_image.dart';
import '../widgets/details/detail_title.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Clothing clothing = Clothing(id: 0, name: '', image: '', details: []);
  String id = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arguments = ModalRoute.of(context)?.settings.arguments as Clothing;
    id = arguments.id.toString();
    print("id: $id");
    if (id.isNotEmpty) {
      getClothingDetails(id);
    }
  }

  void getClothingDetails(String id) async {
    HardCodedData.getClothingDetails(id).then((response) {
      print("response: $response");
      setState(() {
        clothing = response;
      });
    }).catchError((error) {
      print("Error: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Clothing;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white, size: 24),
        ),
        title: const Text(
          "Clothing Details",
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DetailImage(image: arguments.image),
            DetailTitle(id: arguments.id, name: arguments.name),
            DetailData(id: arguments.id, clothing: clothing),
          ],
        ),
      ),
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
