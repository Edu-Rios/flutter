import 'package:flutter/material.dart';

class MyProyectForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyProyectFormState();
}

class MyProyectFormState extends State<MyProyectForm> {
  GlobalKey<FormState> fromKey = GlobalKey();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Icon(
                Icons.my_library_music,
                size: 100,
                color: Colors.blueGrey[700],
              ),
            ),
            SizedBox(height: 20),

            TextFormField(
              controller: emailCtrl,
              decoration: InputDecoration(
                labelText: "Correo",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) {
                String patten =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = RegExp(patten);
                if (value?.length == 0) {
                  return "El correo es necesario";
                }
                return null;
              },
            ),

            SizedBox(height: 20),

            TextFormField(
              controller: passwordCtrl,
              decoration: InputDecoration(
                labelText: "Contraseña",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,

              //  validator: null,
            ),

            SizedBox(height: 10),

            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  print("Botón 'Olvidaste tu contraseña' presionado");
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "¿Olvidaste tu contraseña? ",
                      style: TextStyle(color: Colors.blueGrey[600]),
                    ),
                    Text(
                      "Recuperar",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () => save(),
                child: Text("Guardar", style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[700],
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  save() {
    if (fromKey.currentState!.validate()) {
      print("Formulario válido. Guardando en consola:");
      print("Correo: ${emailCtrl.text}");
      print("Contraseña: ${passwordCtrl.text}");
      fromKey.currentState!.reset();
    }
  }
}
