
class Product {
  String name;
  double price;
  String image;
  int rating;
  String description;
  List<Map<String, dynamic>> reviews;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.rating,
    required this.description,
    required this.reviews,
  });
}

final List<Map<String, dynamic>> products = [
  {
    'name': 'Laptop',
    'price': 15000000,
    'image': 'images/laptop.jpg',
    'rating': '4.7',
    'description': 'Laptop dengan prosesor Intel Core i7, RAM 16GB, dan SSD 512GB.',
    'reviews': [
      {'user': 'Budi', 'rating': 5, 'comment': 'Laptopnya mantap, kencang!'},
      {'user': 'Siti', 'rating': 4, 'comment': 'Bagus, tapi agak berat.'},
    ]
  },
  {
    'name': 'Smartphone',
    'price': 5000000,
    'image': 'images/smartphone.jpg',
    'rating': '4.7',
    'description': 'Smartphone dengan layar AMOLED 6.5 inci, RAM 8GB, dan baterai 5000mAh.',
    'reviews': [
      {'user': 'iluh', 'rating': 5, 'comment': 'banyak promooo'},
      {'user': 'tiko', 'rating': 4, 'comment': 'andalan'},
    ]
  },
  {
    'name': 'Headset',
    'price': 250000,
    'image': 'images/headset.jpg',
    'rating': '4.7',
    'description': 'Headset dengan suara jernih, noise cancellation, dan konektivitas Bluetooth 5.0.',
    'reviews': [
      {'user': 'tyo', 'rating': 5, 'comment': 'kencang!'},
      {'user': 'awa', 'rating': 4, 'comment': 'modelnya bagus dan cakep'},
    ]
  },
  {
    'name': 'Smartwatch',
    'price': 1200000,
    'image': 'images/smartwatch.jpg',
    'rating': '4.7',
    'description': 'Smartwatch dengan fitur kesehatan, monitor detak jantung, dan tahan air.',
    'reviews': [
      {'user': 'adit', 'rating': 5, 'comment': 'mantap, kencang!'},
      {'user': 'puput', 'rating': 4, 'comment': 'Bagus cocok untuk semua orang'},
    ]
  },
  {
    'name': 'Lip cream YOU',
    'price': 60000,
    'image': 'images/lipcreamYOU.jpg',
    'rating': '4.7',
    'description': '💄 YOU Lip Cream adalah lip cream dengan tekstur ringan dan hasil akhir matte velvet yang nyaman di bibir. Diformulasikan dengan Vitamin E dan Hyaluronic Acid, lip cream ini tidak hanya memberikan warna intens tetapi juga menjaga kelembapan bibir sepanjang hari.',
    'reviews': [
      {'user': 'Syfa', 'rating': 5, 'comment': 'Warnanya pigmented, ringan di bibir, nggak bikin kering, dan tahan lama!'},
      {'user': 'Siti', 'rating': 4, 'comment': 'Bagus bangett'},
    ]
  },
   {
    'name': 'Minyak Telon 8 plus',
    'price': 18000,
    'image': 'images/minyak.jpg',
    'rating': '4.7',
    'description': '🌿 Minyak Telon adalah minyak alami yang diformulasikan khusus untuk bayi dan anak-anak, memberikan rasa hangat yang nyaman serta melindungi dari gigitan nyamuk. Mengandung minyak kayu putih, minyak kelapa, dan minyak adas, minyak telon ini aman digunakan setiap hari.',
    'reviews': [
      {'user': 'Rida', 'rating': 5, 'comment': 'Wanginya enak, hangat di kulit, dan ampuh lindungi dari nyamuk!'},
      {'user': 'Komeng', 'rating': 4, 'comment': 'cocok dikulit bayi'},
    ]
  },
   {
    'name': 'Cushion SKINTIFIC gold',
    'price': 120000,
    'image': 'images/cushion.jpg',
    'rating': '4.7',
    'description': '✨ Skintific Cushion adalah cushion foundation dengan coverage tinggi yang tetap terasa ringan di kulit. Dilengkapi dengan 5X Ceramide yang membantu menjaga kelembapan kulit, serta SPF 50+ PA++++ untuk perlindungan maksimal dari sinar matahari.',
    'reviews': [
      {'user': 'ecaw', 'rating': 5, 'comment': 'Coverage tinggi, ringan, tahan lama, dan bikin kulit tetap lembap'},
      {'user': 'ndaboi', 'rating': 4, 'comment': 'baguss minim oksidasi'},
    ]
  },
   {
    'name': 'Facial wash G2g centella',
    'price': 35000,
    'image': 'images/cimuk.jpg',
    'rating': '4.7',
    'description': '🧼 G2G Facial Wash adalah pembersih wajah dengan formula gentle & hydrating, yang efektif mengangkat kotoran dan minyak berlebih tanpa membuat kulit kering. Mengandung Niacinamide & Centella Asiatica, facial wash ini membantu mencerahkan kulit serta menenangkan kulit sensitif.',
    'reviews': [
      {'user': 'ali', 'rating': 5, 'comment': 'Lembut di kulit, nggak bikin kering, bikin wajah lebih cerah!'},
      {'user': 'uhuy', 'rating': 4, 'comment': 'Bagus,ga bikin muka ketarik'},
    ]
  },
];
