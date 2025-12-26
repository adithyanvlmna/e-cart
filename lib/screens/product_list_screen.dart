import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:e_mart/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';


class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBg,
      appBar: AppBar(
        title: const Text("Unpolished Pulses"),
        centerTitle: true,
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
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.68,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return  ProductCard(
                  onTap: (){},
                  name: "Masoor Dal 1KG",
                  price: "₹125.00",
                  oldPrice: "₹145.00",
                  image: "assets/images/product.png",
                );
              },
            ),
          ),

          /// Bottom Sort & Filter
          Container(
            height: 56,
            color: Colors.white,
            child: Row(
              children: [
                _bottomButton(Icons.sort, "Sort By"),
                _bottomButton(Icons.filter_alt_outlined, "Filter"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomButton(IconData icon, String title) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 6),
          Text(title),
        ],
      ),
    );
  }
}
