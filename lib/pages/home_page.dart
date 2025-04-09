import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tokopedia/widgets/product_card.dart';
import 'package:tokopedia/widgets/sale_card.dart';
import 'package:tokopedia/product.dart';
import 'package:tokopedia/product_sale.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _filteredProducts = [];
  int _selectedIndex = 0;

  final List<String> _ads = [
    'images/ads1.jpg',
    'images/ads2.jpg',
    'images/ads3.jpg',
  ];

  final List<Map<String, dynamic>> _categories = [
    {'name': 'Elektronik', 'icon': Icons.electrical_services},
    {'name': 'Fashion', 'icon': Icons.shopping_bag},
    {'name': 'Kesehatan', 'icon': Icons.healing},
    {'name': 'Olahraga', 'icon': Icons.sports},
    {'name': 'Rumah Tangga', 'icon': Icons.kitchen},
    {'name': 'Otomotif', 'icon': Icons.directions_car},
  ];

  @override
  void initState() {
    super.initState();
    _filteredProducts = products; // Pastikan products sudah dideklarasikan di product.dart
  }

  void _filterProducts(String query) {
    setState(() {
      _filteredProducts = products
          .where((product) =>
              product['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            controller: _searchController,
            onChanged: _filterProducts,
            decoration: InputDecoration(
              hintText: "Cari produk...",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: _selectedIndex == 0
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Carousel Iklan
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 150.0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                    ),
                    items: _ads.map((imagePath) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(imagePath, fit: BoxFit.cover),
                        ),
                      );
                    }).toList(),
                  ),

                  SizedBox(height: 10),

                // Bagian Kategori Produk (Ganti yang sebelumnya)
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  child: Text(
    "Kategori",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
),
SizedBox(
  height: 80, // Sesuaikan tinggi kategori
  child: ListView.builder(
    scrollDirection: Axis.horizontal, // Scroll ke samping
    itemCount: _categories.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            CircleAvatar(
              radius: 28, // Ukuran lingkaran
              backgroundColor: Colors.grey[200], // Background lingkaran
              child: Icon(
                _categories[index]["icon"],
                size: 24, // Ukuran ikon lebih kecil
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 5),
            Text(
              _categories[index]["name"],
              style: TextStyle(fontSize: 12), // Ukuran teks lebih kecil
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    },
  ),
),


                  SizedBox(height: 10),

                  // Flash Sale Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Flash Sale",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 150, // Tinggi ListView
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productSales.length,
                      itemBuilder: (context, index) {
                        return SaleCard(productSales: productSales[index]);
                      },
                    ),
                  ),

                  SizedBox(height: 10),

                  // Daftar Produk
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Rekomendasi Produk",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 5),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: _filteredProducts.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: _filteredProducts[index]);
                    },
                  ),
                ],
              ),
            )
          : Center(
              child: Text(
                _selectedIndex == 1
                    ? "Kategori"
                    : _selectedIndex == 2
                        ? "Transaksi"
                        : "Akun",
                style: TextStyle(fontSize: 20),
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Kategori"),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "Transaksi"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
        ],
      ),
    );
  }
}
