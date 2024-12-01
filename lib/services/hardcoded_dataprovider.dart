import 'package:mis_labs/models/clothing_model.dart';

class HardCodedData {
  static final List<Clothing> _clothes = [
    Clothing(
      id: 1,
      name: 'Almost LV Bag',
      image: 'https://drive.usercontent.google.com/download?id=1hNqmzywXkGecttBYFOdTLXBLxKD_V6sd',
      details: [
        'High-quality leather',
        'Stylish and spacious design',
        'Perfect for everyday use',
      ],
    ),
    Clothing(
      id: 2,
      name: 'White Shoes',
      image: 'https://drive.usercontent.google.com/download?id=1qjFP_-g5h-h75359_BNWjNEmYgMn-uKG',
      details: [
        'Comfortable and breathable material',
        'Sleek white design',
        'Perfect for casual wear',
      ],
    ),
    Clothing(
      id: 3,
      name: 'Pink Dress',
      image: 'https://drive.usercontent.google.com/download?id=1V80FvGR-8FRr_6hospg8Z82J4Fov5q4O',
      details: [
        'Elegant design for special occasions',
        'Soft and comfortable fabric',
        'Flattering fit for all body types',
      ],
    ),
    Clothing(
      id: 4,
      name: 'Blue Jeans',
      image: 'https://drive.usercontent.google.com/download?id=1wm4TdHecio_OmW_3dOfvczvz2x-ugzS_',
      details: [
        'Classic blue denim',
        'Durable and long-lasting material',
        'Perfect for casual or semi-casual outfits',
      ],
    ),
    Clothing(
      id: 5,
      name: 'Black and White Dress',
      image: 'https://drive.usercontent.google.com/download?id=1qcsCx36kqQ_zoVr5ocM3rtey9uzW2Reh',
      details: [
        'Chic and timeless black and white color scheme',
        'Perfect for formal events',
        'Lightweight and flowy fabric',
      ],
    ),
  ];

  static Future<List<Clothing>> getClothes() async {
    return _clothes;
  }

  static Future<Clothing> getClothingDetails(String id) async {
    return _clothes.firstWhere((clothing) => clothing.id.toString() == id);
  }
}
