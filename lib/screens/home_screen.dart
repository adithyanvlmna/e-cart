import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:e_mart/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner
            Container(
              margin: const EdgeInsets.all(16),
              height: 140,
              decoration: BoxDecoration(
                color: Colors.orange.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Go Natural with Unpolished Grains\nGet 10% Off",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Image.asset("assets/images/banner.png", height: 100),
                ],
              ),
            ),

           
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Categories",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: List.generate(
                  5,
                  (index) => _categoryItem("assets/images/product.png",
                      "Unpolished Rice"),
                ),
              ),
            ),

            const SizedBox(height: 12),
            _productSection("Featured Products"),
            const SizedBox(height: 12),
            _horizontalProductList(),
            const SizedBox(height: 12),
            _productSection("Daily Best Selling"),
            const SizedBox(height: 12),
            _horizontalProductList(),
            const SizedBox(height: 12),
            _productSection("Recently Added"),
            const SizedBox(height: 12),
            _horizontalProductList(),
            const SizedBox(height: 12),
            _productSection("Popular Products"),
            const SizedBox(height: 12),
            _horizontalProductList(),
            const SizedBox(height: 12),
            _productSection("Trending Products"),
            const SizedBox(height: 12),
            _horizontalProductList(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _categoryItem(String image, String title) {
    return Container(
      width: 70,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: Image.asset(image, height: 40),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _productSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget _horizontalProductList() {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (_, index) => SizedBox(
          width: 160,
          child:  ProductCard(
            onTap: (){},
            name: "Masoor Dal 1KG",
            price: "₹125.00",
            oldPrice: "₹145.00",
            image: "assets/images/product.png",
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemCount: 6,
      ),
    );
  }
}
