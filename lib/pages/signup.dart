import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taxi_booking_flutter/pages/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        'SignUp',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Icon(FontAwesomeIcons.arrowLeft),
             
          ),
        ),
      ),
    ),
      body: Column(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton.icon(onPressed: (){}, label: const Text('Continue with Google'),icon: const Icon(FontAwesomeIcons.google),),
                ),
                ElevatedButton.icon(onPressed: (){}, label: const Text('Continue with Facebook'), icon:const Icon(FontAwesomeIcons.facebook),),
              ],
            )
                    ),
          ),
        ]
      ),
    );
  }
}