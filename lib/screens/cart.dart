import 'package:apex_e_commerce_app/screens/home.dart';
import 'package:apex_e_commerce_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'cart_data.dart';


class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
        double getCartTotal() {
        double total = 0;

        for (var item in cartList) {
          String price = item.price
              .replaceAll("Rs.", "")
              .replaceAll("rs.", "")
              .replaceAll(",", "")
              .trim();

          total += double.parse(price) * item.quantity;
        }

        return total;
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar:  SizedBox(
         
        height: 55, 
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 12, 1, 53),
                    ),
                    onPressed: () {
                       Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                      );
                    },
                  ),

                  IconButton(
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 12, 1, 53),
                    ),
                    onPressed: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cart(),
                  ),
                      );
                    },
                  ),

                  IconButton(
                    icon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 12, 1, 53),
                    ),
                    onPressed: () {  
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                      );                   
                    },
                  ),
                ],
              ),
            ),
              appBar: AppBar(
                title: const Text("My Cart"),
              ),

              body: cartList.isEmpty
            ? const Center(
                child: Text(
                  "Your cart is empty",
                  style: TextStyle(fontSize: 20),
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Image.asset(
                              cartList[index].image,
                              width: 70,
                              fit: BoxFit.cover,
                            ),

                    title: Text(cartList[index].name),

                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(cartList[index].price),

                        const SizedBox(height: 8),

                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove_circle),
                              onPressed: () {
                                setState(() {
                                  if (cartList[index].quantity > 1) {
                                    cartList[index].quantity--;
                                  }
                                });
                              },
                            ),

                            Text(
                              "${cartList[index].quantity}",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            IconButton(
                              icon: const Icon(Icons.add_circle),
                              onPressed: () {
                                setState(() {
                                  cartList[index].quantity++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),

                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          cartList.removeAt(index);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rs. ${getCartTotal().toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 37, 24, 90),
                  ),
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width/2.5,
                 
                  decoration: BoxDecoration(
                     color: Color.fromARGB(255, 37, 24, 90),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Go to Checkout",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
              
          
    );
  }
}