import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  GlobalKey<FormState> fromKey = GlobalKey();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController mobilCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameCtrl,
            decoration: InputDecoration(labelText: "Nombre"),
            validator: (value) {
              if (value?.length == 0) {
                return "El nombre es necesario";
              }
              return null;
            },
          ),

          TextFormField(
            controller: emailCtrl,
            decoration: InputDecoration(labelText: "Email"),
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

          TextFormField(
            controller: mobilCtrl,
            decoration: InputDecoration(labelText: "Telefono"),
            validator: (value) {
              if (value?.length == 0) {
                return "El telefono es necesario";
              } else if (value?.length != 10) {
                return "El telefono debe de tener 10 digitos";
              }
              return null;
            },
          ),

          TextFormField(
            controller: passwordCtrl,
            decoration: InputDecoration(labelText: "Ingresa tu contraseña"),
            obscureText: true,
            // validator: ,
          ),

          TextFormField(
            controller: repeatPassCtrl,
            decoration: InputDecoration(labelText: "Confirmar contraseña"),
            validator: (value) {
              if (value != passwordCtrl.text.toString()) {
                return "Las contraseñas no coinciden ";
              }
              return null;
            },
            obscureText: true,
          ),

          ElevatedButton(onPressed: () => save(), child: Text("Guardar")),
        ],
      ),
    );
  }

  /*
  String validateName

  String validateEmail(String? value) {
    
  }

  String validateMobil(String? value) {
    
  }

  String validatePassword(String? value) {
    
  }
*/
  save() {
    if (fromKey.currentState!.validate()) {
      print("Nombre ${nameCtrl.text}");
      print("Email ${emailCtrl.text}");
      print("Telefono ${mobilCtrl.text}");
      print("Contraseña ${passwordCtrl.text}");
      print("Repetir contraseña ${repeatPassCtrl.text}");
    }
  }
}
