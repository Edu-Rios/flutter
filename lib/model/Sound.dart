class Sound {
  String title;
  String author;
  String cover;
  String time;
  Sound({this.title = "", this.author = "", this.cover = "", this.time = ""});
}

List<Sound> sounds = [
  Sound(
    title: "Blinding Lights",
    author: "The Weeknd",
    cover: "assets/blindinglights.jpg",
    time: "3:20",
  ),
  Sound(
    title: "Levitating",
    author: "Dua Lipa",
    cover: "assets/levitating.jpg",
    time: "3:23",
  ),
  Sound(
    title: "Peaches",
    author: "Justin Bieber",
    cover: "assets/peaches.jpg",
    time: "3:35",
  ),
];
