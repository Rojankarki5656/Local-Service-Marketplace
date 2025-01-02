import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryServices {
  String name;
  Color boxColor;
  Icon icon;

  CategoryServices({
    required this.name,
    required this.boxColor,
    required this.icon,

  });
  static List<CategoryServices> getservices() {
    List<CategoryServices> services = [];

    services.add(
      CategoryServices(
        name: "Plumber", 
        boxColor: const Color(0xff9DCEFF),
        icon: const Icon(FontAwesomeIcons.cableCar)
        ),
        
    );

    services.add(
      CategoryServices(
        name:'Cleaning', 
        boxColor:const Color(0xffEEA4CE),
        icon: const Icon(FontAwesomeIcons.broom)
        )
        
    );
    services.add(
      CategoryServices(
        name:'Carpenter', 
        boxColor: Colors.grey,
        icon:const Icon(FontAwesomeIcons.hammer)
        )
        
    );
    services.add(
      CategoryServices(
        name:'Painter', 
        boxColor:const  Color(0xffEEA4CE),
        icon:const Icon(FontAwesomeIcons.paintBrush)
        )
    );
    

    services.add(
      CategoryServices(
        name:'Cleaning', 
        boxColor:const Color(0xffEEA4CE),
        icon: const Icon(FontAwesomeIcons.broom)
        )
        
    );
    return services;
  }
}