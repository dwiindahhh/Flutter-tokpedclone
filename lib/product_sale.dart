class ProductSale {
  String name;
  double price;
  String image;
  int rating;
  String description;

ProductSale({
  required this.name,
  required this.price,
  required this.image,
  required this.rating,
  required this.description,
});

}

final List<Map<String, dynamic>> productSales = [
  {'name': 'Tinted Lipbalm', 
  'price': 50000, 
  'image': 'images/flash1.jpg',
  'rating': '4.6',
  'description': '💄 TNTED Lip Balm Seamakeup adalah lip balm multifungsi yang memberikan warna alami sekaligus melembapkan bibir. Diperkaya dengan bahan-bahan pelembap seperti shea butter dan jojoba oil, lip balm ini menjaga bibir tetap lembut dan terhidrasi sepanjang hari. Dengan warna yang sheer namun buildable, produk ini cocok untuk tampilan natural sehari-hari.'
  },

  {'name': 'Iphone 13 promax', 
  'price': 15000000, 
  'image': 'images/flash2.jpg',
  'rating': '4.6',
  'description': 'iPhone 13 Pro Max adalah smartphone flagship dari Apple yang menghadirkan layar Super Retina XDR 6,7 inci dengan refresh rate ProMotion 120Hz, memberikan pengalaman visual yang super mulus. Ditenagai oleh chip A15 Bionic, ponsel ini menawarkan performa yang sangat cepat dan efisien.',
  },

  {'name': 'Dazzle me setting powder', 
  'price': 35000, 
  'image': 'images/flash3.jpg',
  'rating': '4.6',
  'description': '🌸 Dazzle Me Setting Powder adalah bedak tabur ringan yang diformulasikan untuk mengontrol minyak berlebih, memberikan hasil akhir matte yang tahan lama. Dengan tekstur ultra halus, bedak ini membantu menyamarkan pori-pori dan garis halus, membuat tampilan makeup lebih flawless dan smooth.',
  },

  {'name': 'Oven panasonic', 
  'price': 350000, 
  'image': 'images/flash4.jpg',
  'rating': '4.6',
  'description': '🔥 Oven Panasonic adalah oven serbaguna dengan teknologi pemanasan inverter yang memastikan makanan matang lebih merata. Kapasitas besar memungkinkan kamu memasak berbagai hidangan, dari memanggang roti hingga memasak ayam panggang.',
  },

  {'name': 'Setting spray Dazzle me', 
  'price': 30000, 
  'image': 'images/flash5.jpg',
  'rating': '4.6',
  'description': '💦 Dazzle Me Setting Spray adalah semprotan wajah yang menjaga riasan tetap tahan lama dan bebas kilap sepanjang hari. Diformulasikan dengan hydrating ingredients untuk menjaga kulit tetap segar tanpa membuatnya terasa kering.'
  },
  
];
