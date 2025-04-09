import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    List<dynamic> reviews = product.containsKey('reviews') ? product['reviews'] : [];

    return Scaffold(
      appBar: AppBar(
        title: Text(product['name'] ?? 'Detail Produk'),
        backgroundColor: Colors.green, // Warna Tokopedia
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Gambar Produk
            Image.asset(
              product['image'] ?? 'images/default.jpg',
              height: 250,
              width: double.infinity,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Produk
                  Text(
                    product['name'] ?? 'Produk Tidak Diketahui',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),

                  // 🔥 **Nama Toko**
                  Row(
                    children: [
                      Icon(Icons.storefront, color: Colors.green, size: 20),
                      SizedBox(width: 5),
                      Text(
                        product['storeName'] ?? 'Toko Resmi',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),

                  // ⭐ Rating Produk
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 4),
                      Text(
                        (product['rating'] ?? 0).toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),

                  // 💰 Harga Produk
                  Text(
                    'Rp ${product['price'] ?? 0}',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  SizedBox(height: 16),

                  // 📜 **Deskripsi Produk**
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Text(
                      product['description'] ?? 'Tidak ada deskripsi tersedia',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                  SizedBox(height: 20),

                  // 🛒 **Tombol Tambah ke Keranjang**
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Produk ditambahkan ke keranjang')),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Tambah ke Keranjang',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Divider(),

                  // ⭐ **Ulasan Pembeli**
                  Text(
                    "Ulasan Pembeli:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                  // 📝 **Daftar Review**
                  reviews.isNotEmpty
                      ? Column(
                          children: reviews.map((review) {
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey.shade300),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey.shade200, blurRadius: 3),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.green.shade100,
                                    child: Icon(Icons.person, color: Colors.green),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          review['user'] ?? 'Pengguna Anonim',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: List.generate(5, (index) {
                                            return Icon(
                                              index < (review['rating'] ?? 0)
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              color: Colors.amber,
                                              size: 16,
                                            );
                                          }),
                                        ),
                                        SizedBox(height: 5),
                                        Text(review['comment'] ?? 'Tidak ada komentar'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        )
                      : Center(
                          child: Text(
                            "Belum ada ulasan",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
