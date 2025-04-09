import 'package:flutter/material.dart';
import 'package:tokopedia/pages/product_detail_page.dart'; // Pastikan ini ada

class SaleCard extends StatelessWidget {
  final Map<String, dynamic> productSales;

  SaleCard({Key? key, required this.productSales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Agar bisa diklik
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(product: productSales), // Pastikan halaman ini ada
          ),
        );
      },
      child: Container(
        width: 120,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white, // Tambahkan background
          borderRadius: BorderRadius.circular(10), // Tambahkan border radius
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 1),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(productSales['image'],
                  height: 80, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productSales['name'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Rp ${productSales['price']}',
                    style: TextStyle(color: Colors.red, fontSize: 12),
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
