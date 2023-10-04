class Sound{
  String title;
  String author;
  String cover;
  String time;
  String edad;

  Sound({
    this.title  ="",
    this.author ="",
    this.cover  ="",
    this.time   ="",
    this.edad   =""
  });
}

List<Sound>sounds = [
    Sound(title: "Enero",author: "Shakira",cover: "assets/images/shakira.png", time: "01:50",edad: "34"),
    Sound(title: "7 rings",author: "Ariana Grande",cover: "assets/images/7rings.jpeg", time: "02:50",edad: "24"),
    Sound(title: "Back To Black",author: "Amy Winehouse",cover: "assets/images/amy.jpg", time: "02:10",edad: "14"),
    Sound(title: "Scream",author: "Avenged Sevenfold",cover: "assets/images/avenged.jpg", time: "01:60",edad: "47"),
    Sound(title: "Havana",author: "Camila Cabello",cover: "assets/images/havana.jpg", time: "02:60",edad: "27"),
];

