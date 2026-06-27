import 'package:apex_e_commerce_app/screens/cart.dart';
import 'package:apex_e_commerce_app/screens/home.dart';
import 'package:apex_e_commerce_app/screens/profile.dart';
import 'package:flutter/material.dart';



class PersonalInfo  extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalState();
}

class _PersonalState extends State<PersonalInfo> {
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
        
        title: Text("Anne Alice",style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 31, 3, 131) ,
        ),),
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 35.0),
               child: Row(                
                  children: [                    
                  SizedBox(width: MediaQuery.of(context).size.width/3.65),
                  
                   Container(
                        height: 150,
                        width: 150,
                        decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                         ),
                      child: ClipOval(
                        child: Image.asset(
                           "assets/profile.jpg",
                            fit: BoxFit.cover,
                         ),
                        ),
                      ),
                   ],
               ),
             ),
             SizedBox(height: 50,),
               Container(
                      height: 80,
                      decoration:BoxDecoration(                       
                       border: Border.all(color: const Color.fromARGB(255, 229, 227, 227)),),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10.0,left: 20),
                         child: Row(
                           children: [
                            SizedBox(width: 10,),
                             Text("Name : Anne Alice",style: TextStyle(
                              fontSize: 16, 
                             ),
                             ),
                          ],
                         ),
                       ),
                    ),
                    Container(
                      height: 80,
                      decoration:BoxDecoration(                       
                       border: Border.all(color: const Color.fromARGB(255, 229, 227, 227)),),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10.0,left: 20),
                         child: Row(
                           children: [
                            SizedBox(width: 10,),
                             Text("Address : No.9, Colombo",style: TextStyle(
                              fontSize: 16, 
                             ),
                             ),
                          ],
                         ),
                       ),
                    ),
                    Container(
                      height: 80,
                      decoration:BoxDecoration(                       
                       border: Border.all(color: const Color.fromARGB(255, 229, 227, 227)),),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10.0,left: 20),
                         child: Row(
                           children: [
                            SizedBox(width: 10,),
                             Text("Telephone no : +77 123 123 1",style: TextStyle(
                              fontSize: 16, 
                             ),
                             ),
                          ],
                         ),
                       ),
                    ),
                    Container(
                      height: 80,
                      decoration:BoxDecoration(                       
                       border: Border.all(color: const Color.fromARGB(255, 229, 227, 227)),),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10.0,left: 20),
                         child: Row(
                           children: [
                            SizedBox(width: 10,),
                             Text("Email : anne.alice@gmail.com",style: TextStyle(
                              fontSize: 16, 
                             ),
                             ),
                          ],),
                       ),
                    ),
                  ]),
              ),
    );
  }
}