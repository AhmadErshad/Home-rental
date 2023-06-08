class Item {
  String? title;
  String? category;
  String? thump_url;
  String? location;
  double? price;

// item constructor
  Item(this.title, this.category, this.location, this.price, this.thump_url);

  static List<Item> recommendation = [
    Item("Modern House for Renting", "House", "Georgia, USA", 2500,
        "images/home1.jpg"),
    Item("Big Villa", "Villa", "Miami, USA", 3000, "images/villa1.jpg"),
    Item("Small House", "House", "Wesex, London", 1500, "images/smHouse1.jpg"),
    Item("Luxios Apartment", "Apartment", "New Yourk, USA", 800,
        "images/apartment1.jpg")
  ];

  static List<Item> nearby = [
    Item("Student Apartment", "Apartment", "Tunis, Tonsia", 150, "images/"),
    Item("Small Villa", "Villa", "Tunis, Tunsia", 300, "images/"),
    Item("Family House", "House", "Manouba, Tunis", 200, "images/"),
    Item("Province House", "House", "Kef, Tunis", 100, "images/"),
  ];
}
