import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:e_mart/core/utils/routes.dart';
import 'package:e_mart/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBrown,
        leading: Image.asset("assets/images/leading.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_outline, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notification_important, color: Colors.white),
          ),
        ],
      ),
      backgroundColor: AppColors.lightBg,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18),

            Center(
              child: Image.asset("assets/images/homeimg.png", height: 180),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                  (index) => _categoryItem(
                    "assets/images/circleimg.png",
                    "Rice",
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),
            _productSection("Featured Products"),
            const SizedBox(height: 12),
            _horizontalProductList(context: context),
            const SizedBox(height: 12),
            _productSection("Daily Best Selling"),
            const SizedBox(height: 12),
            _horizontalProductList(context: context),
            const SizedBox(height: 12),
            _productSection("Recently Added"),
            const SizedBox(height: 12),
            _horizontalProductList(context: context),
            const SizedBox(height: 12),
            _productSection("Popular Products"),
            const SizedBox(height: 12),
            _horizontalProductList(context: context),
            const SizedBox(height: 12),
            _productSection("Trending Products"),
            const SizedBox(height: 12),
            _horizontalProductList(context: context),
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
            radius: 35,
            backgroundColor: Colors.white,
            child: Image.asset(image, height: 40),
          ),
         
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
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget _horizontalProductList({required BuildContext context}) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (_, index) => SizedBox(
          width: 160,
          child: ProductCard(
            onTap: () {
              Navigator.pushNamed(context, Routes.productLscreen);
            },
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
