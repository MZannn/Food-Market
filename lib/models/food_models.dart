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

List<FoodModels> mockFood = [
  FoodModels(
      id: 1,
      picturePath:
          "https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg",
      name: "Sate Sayur Sultan",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 150000,
      rate: 4.2),
  FoodModels(
      id: 2,
      picturePath:
          "https://cdns.klimg.com/dream.co.id/resources/news/2020/04/06/133546/bikin-steak-di-rumah-pastikan-bumbunya-meresap-2004066.jpg",
      name: "Steak Daging Sapi Korea",
      description:
          "Daging sapi Korea adalah jenis sapi paling premium di Korea. Namun, untuk menikmatinya Anda tidak perlu jauh-jauh ke Korea Selatan. Steak Sapi Korea Oppa Bandung ini sudah terkenal di seluruh Indonesia dan sudah memiliki lebih dari 2 juta cabang.",
      ingredients: "Daging Sapi Korea, Garam, Lada Hitam",
      price: 750000,
      rate: 4.5),
  FoodModels(
      id: 3,
      picturePath:
          "https://cdn-aboak.nitrocdn.com/QJsLnWfsWAiuukSIMowyVEHtotvSQZoR/assets/static/optimized/rev-6b0572d/sites/default/files/styles/featured_image_sm_1x/public/recipe_images/mexican-chopped-salad.jpg",
      name: "Mexican Chopped Salad",
      description:
          "Salad ala mexico yang kaya akan serat dan vitamin. Seluruh bahan diambil dari Mexico sehingga akan memiliki cita rasa yang original.",
      ingredients: "Jagung, Selada, Tomat Ceri, Keju, Wortel",
      price: 105900,
      rate: 3.9),
  FoodModels(
      id: 4,
      picturePath:
          "https://images.immediate.co.uk/production/volatile/sites/2/2016/08/25097.jpg?quality=90&resize=768,574",
      name: "Sup Wortel Pedas",
      description:
          "Sup wortel pedas yang unik ini cocok banget buat kalian-kalian yang suka pedas namun ingin tetap sehat. Rasanya yang unik akan memanjakan lidah Anda.",
      ingredients: "Wortel, Seledri, Kacang Tanah, Labu, Garam, Gula",
      price: 60000,
      rate: 4.9),
  FoodModels(
      id: 5,
      picturePath:
          "https://www.wowkeren.com/display/images/photo/2020/11/19/00340055s6.jpg",
      name: "Korean Raw Beef Tartare",
      description:
          "Daging sapi Korea cincang yang disajikan mentah dan disiram saus spesial dengan toping kuning telur dan taburan biji wijen.",
      ingredients: "Daging Sapi Korea, Telur, Biji Wijen",
      price: 350000,
      rate: 3.4)
];
