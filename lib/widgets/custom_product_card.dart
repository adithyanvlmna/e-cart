import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String oldPrice;
  final String image;
  final void Function()? onTap;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.image,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(image, height: 90),
              ),
              Positioned(
                right: 0,
                child: Icon(Icons.favorite_border, size: 18),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(price,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13,color: AppColors.primaryBrown)),
              const SizedBox(width: 6),
              Text(oldPrice,
                  style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 11,
                      color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 8),
          _addButton(onTap: onTap),
        ],
      ),
    );
  }

  Widget _addButton({required void Function()? onTap}) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(color:  AppColors.primaryBrown,),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add",
              style: TextStyle(
                color: AppColors.primaryBrown,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(Icons.shopping_cart_outlined,size: 15,color: AppColors.primaryBrown,)
          ],
        ),
      ),
    );
  }
}
