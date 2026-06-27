import 'package:apex_e_commerce_app/screens/cart.dart';
import 'package:apex_e_commerce_app/screens/help.dart';
import 'package:apex_e_commerce_app/screens/home.dart';
import 'package:apex_e_commerce_app/screens/personalinfo.dart';
import 'package:flutter/material.dart';



class Profile  extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                     
                    },
                  ),
                ],
              ),
            ),
            
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                
               
                children: [
                  SizedBox(height: 20,),
                 AppBar(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255) ,
                      
                      centerTitle: true,
                      title: Row(
                        
                        children: [
              SizedBox(width: MediaQuery.of(context).size.width/8.5),
                const Text(
                  "My Profile",
                  style: TextStyle(
                    color: Color.fromARGB(255, 31, 3, 131) ,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                
              ),
              SizedBox(width: 60,),
              Icon(
              Icons.settings,
              color: Color.fromARGB(255, 31, 3, 131) ,
                        ),
                
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width:MediaQuery.of(context).size.width,
                      height: 240,        
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 226, 229) ,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      
                      child: Column(
                      
                        children: [
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Container(
                                height: 110,
                                width: 110,
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
                              SizedBox(width: 10,),
                              SizedBox(
                                height: 100,
                                width: MediaQuery.of(context).size.width/1.9,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Anne Alice",style: TextStyle(
                                          color:const Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Text("anne.allice@gmail.com",style: TextStyle(
                                          color:const Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 16,
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Text("+77 123 123 1",style: TextStyle(
                                          color:const Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 16,
                                          ),),
                                      ],
                                    ),
                                  ]),
                              ),                              
                            ],                            
                          ),

                          SizedBox(height: 15,),

                          Container(
                              width:MediaQuery.of(context).size.width/1.14,
                              height: 80,        
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255) ,
                                borderRadius: BorderRadius.circular(20),
                              ),
                      child: Row(                        
                        children: [
                          Row(
                            children: [
                              Column(                            
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0,right: 5),
                                    child: Text("Orders",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2.0,right: 5),
                                    child: Text("0",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Total Orders",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: const Color.fromARGB(255, 137, 136, 136),
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/2.5),
                         Image.asset("assets/cart.jpg",height: 70,width: 70,),
                        ],),
                       ), 
                      ]),
                    ),
                    SizedBox(height: 30,),
                    Container(
                     width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                       border: Border.all(color: const Color.fromARGB(255, 229, 227, 227)),),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10.0,left: 20),
                         child: Row(
                           children: [
                             Text("My Account",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16, 
                             ),),
                            ],
                         ),
                       ),
                    ),
                    Container(
                      height: 60,
                      decoration:BoxDecoration(                        
                       border: Border.all(color: const Color.fromARGB(255, 229, 227, 227)),),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10.0,left: 20),
                         child: Row(
                           children: [
                            Icon(Icons.person),
                            SizedBox(width: 10,),
                             Text("Personal Information",style: TextStyle(
                              fontSize: 16, 
                             ),),
                             SizedBox(width: MediaQuery.of(context).size.width/3.65),
                              IconButton(
                                  icon: const Icon(                                    
                                    Icons.navigate_next,
                                    color: Color.fromARGB(255, 12, 1, 53),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PersonalInfo(),
                                ),
                                    );
                                  },
                                ),
                           ],
                         ),
                       ),
                    ),
                    Container(
                      height: 60,
                      decoration:BoxDecoration(                       
                       border: Border.all(color: const Color.fromARGB(255, 229, 227, 227)),),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10.0,left: 20),
                         child: Row(
                           children: [
                            Icon(Icons.payment),
                            SizedBox(width: 10,),
                             Text("Payment Method",style: TextStyle(
                              fontSize: 16, 
                             ),
                             ),
                             SizedBox(width: MediaQuery.of(context).size.width/2.67),
                             Icon(Icons.navigate_next,),
                           ],
                         ),
                       ),
                    ),
                    Container(
                      height: 60,
                      decoration:BoxDecoration(                       
                       border: Border.all(color: const Color.fromARGB(255, 229, 227, 227)),),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10.0,left: 20),
                         child: Row(
                           children: [
                            Icon(Icons.support_agent),
                            SizedBox(width: 10,),
                             Text("Help & Support",style: TextStyle(
                              fontSize: 16, 
                             ),),
                            SizedBox(width: MediaQuery.of(context).size.width/2.6),
                            IconButton(
                                  icon: const Icon(                                    
                                    Icons.navigate_next,
                                    color: Color.fromARGB(255, 12, 1, 53),
                                  ),
                                  onPressed: () {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                  builder: (context) => const Help(),
                                ),
                                    );
                                  },
                                ),                             
                           ],
                         ),
                       ),
                    ),
                    SizedBox(height: 50,),
                   
                        ]),
                        ),
                    );  
  }
}