import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:e_mart/widgets/common_button.dart';
import 'package:e_mart/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  CommonButton(title: "Add To Cart", onTap: (){},width: 360,),
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
                      height: 360,
                      width: 360,
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
                    children:  [
                      Text("₹125.00",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold,color: AppColors.primaryBrown)),
                      SizedBox(width: 8),
                      Text("₹145.00",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey)),
                      SizedBox(width: 6),
                      Text("(14% OFF)",
                          style: TextStyle(color: AppColors.primaryBrown)),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.black,))
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
                    "Bag of Green offers premium Strawberries from South Africa, prized for their vibrant red color, natural sweetness, and juicy texture. Perfect for snacking, desserts, and smoothies, these strawberries are carefully sourced and delivered fresh anywhere in the UAE. Enjoy the delicious taste and quality of South African strawberries at your convenience.",
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
                      itemBuilder: (_, i) =>  SizedBox(
                        width: 160,
                        child: ProductCard(
                          onTap: (){},
                          name: "Chana Dal 1KG",
                          price: "₹105.00",
                          oldPrice: "₹80.00",
                          image: "assets/images/product.png",
                        ),
                      ),
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: 12),
                      itemCount: 4,
                    ),
                  ),
                  SizedBox(height: 40,)
                ],
              ),
            ),
          ),

          /// Bottom Add To Cart
         
        ],
      ),
    );
  }
}
