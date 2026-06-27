import 'package:apex_e_commerce_app/screens/cart.dart';
import 'package:apex_e_commerce_app/screens/profile.dart';
import 'package:flutter/material.dart';



class Help  extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
                      // Home
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
        
        title: Text("Help & Support",style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 31, 3, 131) ,
        ),),
      ),
      
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 250,),
                Text("How Can I Help?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/1.05,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255,235,232,232,),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Ask Question",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 44, 10, 158),
                            ),
                          ),
                        ),
                      ),
              ],         
        ),
      ),
    );
                                               
  }
  }