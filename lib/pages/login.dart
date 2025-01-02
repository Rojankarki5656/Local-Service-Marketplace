
import 'package:flutter/material.dart';
import 'package:taxi_booking_flutter/pages/customer.dart';
import 'package:taxi_booking_flutter/pages/serviceprovider.dart';
import 'package:taxi_booking_flutter/pages/signup.dart';


class Homepage extends StatelessWidget {
  Homepage({super.key});

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }

body(context) {
    return Column(
      children: [
            SafeArea(
              child: Center(
                child: Text('Local Service \n Marketplace', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'Poppins' ,
                shadows: [
                  Shadow(
                    offset:const  Offset(4.0, 2.0),
                    blurRadius: 3.0,
                    color:const  Color.fromARGB(255, 31, 29, 29).withOpacity(0.15),
                  ),
                ]
               ),
               ),
      ),
            ),
        
        Expanded(
          child: Center(
            child: Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.primaryContainer,
                boxShadow: [
                    BoxShadow(
                      color:const  Color.fromARGB(255, 31, 29, 29).withOpacity(0.30),
                      blurRadius: 40,
                      spreadRadius: 0.0
                    )
                  ]
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: username,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          filled: true,
                          fillColor:const  Color.fromARGB(31, 31, 31, 31),
                          contentPadding:const  EdgeInsets.all(20),
                          hintStyle:const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 144, 140, 140)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding:const  EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20),
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor:const  Color.fromARGB(31, 31, 31, 31),
                          contentPadding:const  EdgeInsets.all(20),
                          hintStyle:const  TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 144, 140, 140)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),));
                      }, child: const Text('Login',style: TextStyle(
                                  color: Color(0xffC58BF2),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14
                                ),
                                ),
                                ),
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup(),));
                      
                    }, child: const Text('Signup',style: TextStyle(
                                color: Color(0xffC58BF2),
                                fontWeight: FontWeight.w600,
                                fontSize: 14
                              ),
                              ),
                              )
                  ],
                ),
              
              
            ),
          ),
        ),
      ],
    );
  }
}
