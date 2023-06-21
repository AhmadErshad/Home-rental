class Item {
  String? title;
  String? category;
  String? thumbUrl;
  String? location;
  double? price;

// item constructor
  Item(this.title, this.category, this.location, this.price, this.thumbUrl);

  static List<Item> recommendation = [
    Item("Modern House for Renting", "House", "1st Region, Herat", 2500,
        "./images/home2.jpg"),
    Item("Big Villa", "Villa", "Engil District, Herat", 3000, "images/villa2.jpg"),
    Item("Small House", "House", "Darb Khosh, Herat", 1500, "./images/home2.jpg"),
    Item("Luxios Apartment", "Apartment", "Mostufiat, Herat", 800,
        "./images/apartment1.jpg")
  ];

  static List<Item> nearby = [
    Item("Student Apartment", "Apartment", "Number 1, Herat", 150, "./images/apartment1.jpg"),
    Item("Small Villa", "Villa", "6th Region, Herat", 300, "./images/villa1.jpg"),
    Item("Family House", "House", "Farhang Street, Herat", 200, "./images/home2.jpg"),
    Item("Province House", "House", "Kowser Street, Herat", 100, "./images/town_house.jpg"),
  ];
    List<Item> displayList = List.from([recommendation, nearby]);

}
