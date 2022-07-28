class FoodModels {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  FoodModels({
    required this.id,
    required this.picturePath,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.price,
    required this.rate,
  });
}

FoodModels mockFood = FoodModels(
    id: 1,
    picturePath:
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_1024/v1546025904/nq8cfsqac6n2jjfrbogu.jpg",
    name: "Sate Sayur Sultan",
    description:
        "Sate atau satai adalah makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu. Sate disajikan dengan berbagai macam bumbu yang bergantung pada variasi resep sate",
    ingredients: "Sayur",
    price: 100000,
    rate: 4.2);
