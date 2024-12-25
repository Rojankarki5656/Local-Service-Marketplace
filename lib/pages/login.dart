import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:taxi_booking_flutter/pages/customer.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  Future<void> check_login(context) async
  {
    if (username.text != '' || password.text != '')
    {
      try
      {
        var uri = 'http://10.0.2.2/practise/sql.php';
        var res = await http.post(Uri.parse(uri), body:{
          'username': username.text,
          'password': password.text
        });
        print(res.body);
        var response = jsonDecode(res.body);
        if (response["success"]==true)
        {
          Navigator.push(context, MaterialPageRoute(builder: 
          (context) => const Customer(),));
        }
        else
        {
          print('Invalid  username or password');
        }
      }
      catch(e)
      {
        print(e);
      }
    }
    else
    {
      print('All is not well');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar(),
      body: body(context),
    );
  }

  Container body(context) {
    return Container(
      height: 400,
      width: 500,
      margin:const EdgeInsets.only(top:110,left:150,right:20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffDDDADA),
        boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 31, 29, 29).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0
            )
          ]
      ),

      child: Column(
        children: [
          SizedBox(
            width: 300,
            child: Column(
              children: [
              const SizedBox(height: 15,),
              TextField(
                controller: username,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  contentPadding: EdgeInsets.all(15),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 144, 140, 140)
                  )
            
                ),
              ),
              TextField(
                controller: password,
                  decoration: const InputDecoration(
                  hintText: 'Pasword',
                  contentPadding: EdgeInsets.all(15),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 144, 140, 140)
                  )
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(5),
              ),
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 11
                  ),
                ),),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed: () {
                check_login(context);
              }, child: const Text('Login')
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                
              }, child: const Text('Create New Account')
              ),
                      
            ],
            )
          ),
        ],
      )
      
      
    );
  }


  AppBar appBar() {
    return AppBar(
      title: const Text('Taxi Booking',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      
    );
  }
}
