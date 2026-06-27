import 'package:apex_e_commerce_app/screens/cart.dart';
import 'package:apex_e_commerce_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'product1.dart';

class Home  extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //Main Bottom appbar 
      bottomNavigationBar:  SizedBox( 
        height: 55, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //home button Navigate to home
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
                  //cart button navigate to Cart
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
                  //Profile button navigate to Profile page
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
            //Main appbar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255) ,
        
        centerTitle: true,

        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 12, 1, 53) ,
          ),
          onPressed: () {
            // Open drawer
          },
        ),

        title: const Text(
          "Apex",
          style: TextStyle(
            color: Color.fromARGB(255, 37, 24, 90),
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Color.fromARGB(255, 12, 1, 53) ,
            ),
            onPressed: () {
              // Notification action
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

        ],
      ),

      body: SafeArea(
        child:SingleChildScrollView(
          
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/1.05,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255,235,232,232,),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Products",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 44, 10, 158),
                            ),
                          ),
                        ),
                      ),
                      
              ),
          
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 37, 24, 90),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("All",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          
                        ),),
                      ),
                    ),
                    Container(
                      
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("Phones",
                        style: TextStyle(
                          fontSize: 14,
                          
                        ),),
                      ),
                    ),
                    Container(
                      
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("Laptops",
                        style: TextStyle(
                          fontSize: 14,
                          
                        ),),
                      ),
                    ),
                    Container(
                      
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("Accessories",
                        style: TextStyle(
                          fontSize: 14,
                          
                        ),),
                      ),
                    ),
                    Container(
                      
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("Smart watch",
                        style: TextStyle(
                          fontSize: 14,
                          
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Featured Products",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDetails(
                  productRating: "4.8",
                  productDescription: "iPhone 15. Dynamic Island comes to iPhone 15. A48MP Main camera for breathtalking detail. A16 Bionic, the ultimate smartphone chip. And USB-C connectivity.",
                  productName: "iPhone 15",
                  price: "Rs. 569,900.00",
                  image: "assets/item1.jpg",
                ),
              ),
            );
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 170,
              height: 240,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
          // Product Image
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/item1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Product Name
                  const Text(
                    "iPhone 15",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // Price and Rating
                  Row(
                    children: const [
                      Text(
                        "Rs. 569,900.00",
                        style: TextStyle(fontSize: 13),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "4.8",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ),
                   InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ProductDetails(
                        productRating: "4.6",
                        productDescription: "Galaxy A36. Immersive 6.7 Super AMOLED 120Hz display that shines bright even outdoors. Advanced 50MP triple camera system. Built-in Knox Vault security. And a massive 5,000 mAh battery.",
                        productName: "Samsung A36", 
                        price: "rs.99,900.00", 
                        image: "assets/item2.png")
                        )
                        );
                    },
                     child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: 170,
                        height: 240,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            // Image Placeholder
                            Container(
                              height: 130,
                              width: double.infinity,                            
                              decoration: BoxDecoration(                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/item2.png",
                              fit: BoxFit.cover,),
                            ),
                                       
                            const SizedBox(height: 7),
                            SizedBox(height: 15,),
                            // Product Name Placeholder
                            SizedBox(
                              height: 19,
                              width: 100,
                              child: Text("Samsung A36",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                                       
                            const SizedBox(height: 6),
                                       
                            // Price Placeholder
                            SizedBox(
                              height: 15,
                              width: 200,
                              child: Row(
                                children: [
                                  Text("rs.99,900.00",style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                  SizedBox(width: 20,),
                                  Icon(Icons.star,size: 15,
                                  color:  Colors.amber,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("4.6",style: TextStyle(
                                    fontSize: 12,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ProductDetails(
                        productRating: "4.9",
                        productDescription: "MacBook Air M2. Supercharged by the M2 chip. Immersive four-speaker sound system with Spatial Audio. Up to 24GB of unified memory. And power that lasts all day long.",
                        productName: "MacBook Air M2", 
                        price: "rs.249,900.00", 
                        image: "assets/item3.jpg")
                        )
                        );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: 170,
                        height: 240,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            // Image Placeholder
                            Container(
                              height: 130,
                              width: double.infinity,                            
                              decoration: BoxDecoration(                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/item3.jpg",fit: BoxFit.cover,),
                            ),
                    
                            const SizedBox(height: 10),
                            SizedBox(height: 10,),
                            // Product Name Placeholder
                            SizedBox(
                              height: 17,
                              width: 200,
                              child: Text("MacBook Air M2",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                    
                            const SizedBox(height: 12),
                    
                            // Price Placeholder
                            SizedBox(
                              height: 15,
                              width: 200,
                              child: Row(
                                children: [
                                  Text("rs.249,900.00",style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.star,size: 15,
                                  color:  Colors.amber,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("4.9",style: TextStyle(
                                    fontSize: 12,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                   InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ProductDetails(
                        productRating: "4.7",
                        productDescription: "Sony WH-1000XM5. Intelligent Adaptive Sound Control adjusts your audio based on your surroundings. Intuitive touch panel controls on the earcups. 3 minutes of charging gets you 3 hours of playback. ",
                        productName: "Sony WH-1000XM5", 
                        price: "rs.77,300.00", 
                        image: "assets/item4.jpg")
                        )
                        );
                    },
                     child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: 170,
                        height: 240,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            // Image Placeholder
                            Container(
                              height: 130,
                              width: double.infinity,                            
                              decoration: BoxDecoration(                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/item4.jpg",fit: BoxFit.cover,),
                            ),
                                       
                            const SizedBox(height: 10),
                            SizedBox(height: 10,),
                            // Product Name Placeholder
                            SizedBox(
                              height: 20,
                              width: 200,
                              child: Text("Sony WH-1000XM5",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                                       
                            const SizedBox(height: 8),
                                       
                            // Price Placeholder
                            SizedBox(
                              height: 15,
                              width: 200,
                              child: Row(
                                children: [
                                  Text("rs.77,300.00",style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.star,size: 15,
                                  color:  Colors.amber,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("4.7",style: TextStyle(
                                    fontSize: 12,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ProductDetails(
                        productRating: "4.8",
                        productDescription: "AirPods Pro 2. Supercharged by the Apple H2 chip.Immersive Personalized Spatial Audio tuned to your ears. Sweat and water-resistant design. And up to 30 hours of listening time to keep you moving.",
                        productName: "AirPods Pro 2", 
                        price: "rs.81,120.00", 
                        image: "assets/item5.jpg")
                        )
                        );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: 170,
                        height: 240,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            // Image Placeholder
                            Container(
                              height: 130,
                              width: double.infinity,                            
                              decoration: BoxDecoration(                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/item5.jpg",fit: BoxFit.cover,),
                            ),
                    
                            const SizedBox(height: 10),
                            SizedBox(height: 5,),
                            // Product Name Placeholder
                            SizedBox(
                              height: 20,
                              width: 200,
                              child: Text("AirPods Pro 2",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                    
                            const SizedBox(height: 6),
                    
                            // Price Placeholder
                            SizedBox(
                              height: 15,
                              width: 200,
                              child: Row(
                                children: [
                                  Text("rs.81,120.00",style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.star,size: 15,
                                  color:  Colors.amber,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("4.8",style: TextStyle(
                                    fontSize: 12,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                   InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ProductDetails(
                        productRating: "4.7",
                        productDescription: "Apple Watch Series 9. Smarter. Brighter. Mightier. Driven by the all-new S9 chip. Tap your thumb and index finger together to answer calls instantly. Precision Finding to pinpoint your misplaced iPhone.",
                        productName: "Apple Watch Series 9", 
                        price: "rs.129,900.00", 
                        image: "assets/item6.jpg")
                        )
                        );
                    },
                     child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: 170,
                        height: 240,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            // Image Placeholder
                            Container(
                              height: 130,
                              width: double.infinity,                            
                              decoration: BoxDecoration(                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/item6.jpg",fit: BoxFit.cover,),
                            ),
                                       
                            const SizedBox(height: 10),
                            SizedBox(height: 5,),
                            // Product Name Placeholder
                            SizedBox(
                              height: 20,
                              width: 200,
                              child: Text("Apple Watch Series 9",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                                       
                            const SizedBox(height: 6),
                                       
                            // Price Placeholder
                            SizedBox(
                              height: 15,
                              width: 200,
                              child: Row(
                                children: [
                                  Text("rs.129,900.00",style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                  SizedBox(width: 20,),
                                  Icon(Icons.star,size: 15,
                                  color:  Colors.amber,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("4.7",style: TextStyle(
                                    fontSize: 12,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   ),
                ],
              ),
              InkWell(
                onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ProductDetails(
                        productRating: "4.5",
                        productDescription: "Foxin 30MP Web Vision. High-resolution 30MP snapshot capture meets smooth 1080p video at 30 FPS. Six adjustable front-facing LED lights for clear low-light visibility. And instant driver-free USB plug-and-play setup.",
                        productName: "Foxin 30MP Web Camera", 
                        price: "rs.21,800.00", 
                        image: "assets/item7.jpg")
                        )
                        );
                    },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: 170,
                        height: 240,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            // Image Placeholder
                            Container(
                              height: 120,
                              width: double.infinity,                            
                              decoration: BoxDecoration(                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/item7.jpg",fit: BoxFit.cover,),
                            ),
                    
                            const SizedBox(height: 10),
                            SizedBox(height: 15,),
                            // Product Name Placeholder
                            SizedBox(
                              height: 15,
                              width: 100,
                              child: Text("Foxin 30MP Web Camera",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                    
                            const SizedBox(height: 8),
                    
                            // Price Placeholder
                            SizedBox(
                              height: 15,
                              width: 200,
                              child: Row(
                                children: [
                                  Text("rs.21,800.00",style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.star,size: 15,
                                  color:  Colors.amber,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("4.5",style: TextStyle(
                                    fontSize: 12,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                     InkWell(
                      onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ProductDetails(
                        productRating: "4.6",
                        productDescription: "Immersive BassBoost drivers for deep, rich audio. A massive battery that delivers up to 40 hours of continuous playback. Dual-mic environmental noise cancellation for crystal-clear calls. Magnetic earbuds that snap together neatly when not in use.",
                        productName: "Neckband Bluetooth", 
                        price: "rs.4,500.00", 
                        image: "assets/item8.jpg")
                        )
                        );
                    },
                       child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          width: 170,
                          height: 240,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              // Image Placeholder
                              Container(
                                height: 120,
                                width: double.infinity,                            
                                decoration: BoxDecoration(                              
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/item8.jpg",fit: BoxFit.cover,),
                              ),
                                           
                              const SizedBox(height: 10),
                              SizedBox(height: 15,),
                              // Product Name Placeholder
                              SizedBox(
                                height: 15,
                                width: 100,
                                child: Text("Neckband Bluetooth",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                                           
                              const SizedBox(height: 8),
                                           
                              // Price Placeholder
                              SizedBox(
                                height: 15,
                                width: 200,
                                child: Row(
                                  children: [
                                    Text("rs.4,500.00",style: TextStyle(
                                      fontSize: 13,
                                    ),),
                                    SizedBox(width: 30,),
                                    Icon(Icons.star,size: 15,
                                    color:  Colors.amber,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("4.6",style: TextStyle(
                                      fontSize: 12,),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                       ),
                     ),
                  ],
                ),
              ), 
            ],
          ),
        ),
        
      ),
        
      ),
      
    );
  }
}