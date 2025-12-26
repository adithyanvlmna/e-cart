import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:e_mart/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBg,
      appBar: AppBar(
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 12),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/product.png",
                      height: 220,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Masoor Dal 1KG",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Unpolished Masoor Dal",
                    style: TextStyle(color: AppColors.greyText),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Text("₹125.00",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(width: 8),
                      Text("₹145.00",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey)),
                      SizedBox(width: 6),
                      Text("(14% OFF)",
                          style: TextStyle(color: Colors.green)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "High-quality unpolished masoor dal sourced directly from farms. Rich in protein and perfect for daily meals.",
                    style: TextStyle(color: AppColors.greyText),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Related Products",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 240,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, i) => const SizedBox(
                        width: 160,
                        child: ProductCard(
                          name: "Chana Dal 1KG",
                          price: "₹105.00",
                          oldPrice: "₹120.00",
                          image: "assets/images/product.png",
                        ),
                      ),
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: 12),
                      itemCount: 4,
                    ),
                  )
                ],
              ),
            ),
          ),

          /// Bottom Add To Cart
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBrown,
                ),
                onPressed: () {},
                child: const Text(
                  "Add To Cart",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
