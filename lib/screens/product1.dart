import 'package:flutter/material.dart';
import 'cart_data.dart';


class ProductDetails extends StatelessWidget {
  final String productRating;
  final String productDescription;
  final String productName;
  final String price;
  final String image;

  const ProductDetails({
    super.key,
    required this.productRating,
    required this.productDescription,
    required this.productName,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(              
              child: Image.asset(
                image,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              productName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              price,
              style: const TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 37, 24, 90),
                fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 20),

          Row(
            
              children: [
                 Text(
              productRating,
              style:  TextStyle(
                fontSize: 16,                
              ),
            ),
            SizedBox(width: 10,),
                Icon(
                  Icons.star,
                  size: 17,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 17,
                  color: Colors.amber,
                ),
                Icon(
                Icons.star,
                size: 17,
                color: Colors.amber,
              ),
              Icon(
                  Icons.star,
                  size: 17,
                  color: Colors.amber,
                ),
                Icon(
                Icons.star_half,
                size: 17,
                color: Colors.amber,
              ),
            ],
            ),
            
             const SizedBox(height: 20),

            Text(
              productDescription,
              style: const TextStyle(
                fontSize: 16,                
              ),
            ),

            const SizedBox(height: 20),
          ElevatedButton.icon(

          onPressed: () {
              cartList.add(
              CartItem(
                name: productName,
                price: price,
                image: image,
              ),
                        );
           
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Item added to cart"),
              ),
            );

          },
          icon: const Icon(Icons.shopping_cart,color: Colors.white,),
          label: const Text("Add to Cart",style: TextStyle(
            color: Colors.white,
          ),),
           style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 37, 24, 90),
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
        ),
          ),                      
          ],
        ),
      ),
    );
  }
}