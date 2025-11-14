import 'package:flutter/material.dart';

class Spotify extends StatelessWidget {
  const Spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text("Reproductor Spotify"),
        backgroundColor: const Color.fromARGB(255, 30, 226, 89),
        elevation: 15,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: const Color.fromARGB(255, 249, 185, 35),
              child: CircleAvatar(
                radius: 95,
                // backgroundImage: AssetImage('assets/images/gorillaz.jpeg'),
              ),
            ),
            SizedBox(height: 30),

            Text(
              "On Melancholy Hill",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Gorillaz",
              style: TextStyle(color: Colors.grey[400], fontSize: 20),
            ),
            SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1:23",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),

                  IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.white),
                    iconSize: 25.0,
                    onPressed: () {
                      print("Favorito presionado");
                    },
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.repeat,
                    color: const Color.fromARGB(137, 255, 112, 2),
                  ), // Icono
                  iconSize: 25.0,
                  onPressed: () {
                    print("Aleatorio presionado");
                  },
                ),

                IconButton(
                  icon: Icon(Icons.skip_previous, color: Colors.white),
                  iconSize: 35.0,
                  onPressed: () {
                    print("Repetir presionado");
                  },
                ),

                IconButton(
                  icon: Icon(
                    Icons.play_circle_fill,
                    color: Colors.greenAccent[400],
                  ),
                  iconSize: 80.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Reproducir()),
                    );
                  },
                ),

                IconButton(
                  icon: Icon(Icons.home, color: Colors.white),
                  iconSize: 35.0,
                  onPressed: () {
                    print("Skip presionado");
                  },
                ),

                IconButton(
                  icon: Icon(Icons.volume_down, color: Colors.white54),
                  iconSize: 25.0,
                  onPressed: () {
                    print("Volumen presionado");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// --- PANTALLA SECUNDARIA (MODIFICADA) ---
class Reproducir extends StatelessWidget {
  const Reproducir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reproduciendo ahora"),
        backgroundColor: const Color.fromARGB(255, 30, 226, 89),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Seguir reproduciendo?",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text("Regresar"),
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent[400],
                foregroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
