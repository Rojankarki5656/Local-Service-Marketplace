class PopularServices {
  String name;
  bool boxIsSelected;

  PopularServices({
    required this.name,
    required this.boxIsSelected
  });

  static List < PopularServices > getPopularDiets() {
    List < PopularServices > popularDiets = [];

    popularDiets.add(
      PopularServices(
       name: 'Plumber',
       boxIsSelected: true,
      )
    );

    popularDiets.add(
      PopularServices(
       name: 'Carpenter',
       boxIsSelected: false,
      )
    );
    popularDiets.add(
      PopularServices(
       name: 'Cleaning',
       boxIsSelected: false,
      )
    );
    popularDiets.add(
      PopularServices(
       name: 'Tutor',
       boxIsSelected: false,
      )
    );

    return popularDiets;
  }
}