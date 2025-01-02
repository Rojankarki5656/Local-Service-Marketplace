import 'package:flutter/material.dart';

class RecomendationServices {
  String name;
  Color boxColor;
  bool viewIsSelected;

  RecomendationServices({
    required this.name,

    required this.boxColor,
    required this.viewIsSelected
  });

  static List < RecomendationServices > getservices() {
    List < RecomendationServices > recommendedServices = [];

    recommendedServices.add(
      RecomendationServices(
       name: 'Carpenter',
       viewIsSelected: true,
       boxColor:const Color(0xff9DCEFF)
      )
    );

    recommendedServices.add(
      RecomendationServices(
       name: 'Painter',
       viewIsSelected: false,
       boxColor:const Color(0xffEEA4CE)
      )
    );

    recommendedServices.add(
      RecomendationServices(
       name: 'Plumber',
       viewIsSelected: false,
       boxColor:const Color(0xffEEA4CE)
      )
    );

    recommendedServices.add(
      RecomendationServices(
       name: 'Cleaning',
       viewIsSelected: false,
       boxColor:const Color(0xffEEA4CE)
      )
    );
    recommendedServices.add(
      RecomendationServices(
       name: 'Dish Washer',
       viewIsSelected: false,
       boxColor:const Color(0xffEEA4CE)
      )
    );

    return recommendedServices;
  }
}