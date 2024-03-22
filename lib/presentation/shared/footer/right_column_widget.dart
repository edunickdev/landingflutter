import 'package:flutter/material.dart';
import 'package:ong/config/theme/constants.dart';
import 'package:ong/presentation/shared/shared.dart';

class RightColumnWidget extends StatelessWidget {
  const RightColumnWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final names = TextEditingController();
    final email = TextEditingController();
    final phoneNumber = TextEditingController();
    final message = TextEditingController();
    final contactForm = GlobalKey<FormState>();


    return Column(
      children: [
        Container(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Form(
              key: contactForm,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyText(text: 'Nombres y apellidos', color: primary),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: names,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Este campo no puede estar vacio";
                      } else if (value.length <= 8) {
                        return "Este campo debe tener 8 o más caractéres";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Nombres y Apellidos",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Correo",
                            style: TextStyle(color: primary),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Teléfono",
                            style: TextStyle(color: primary),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Correo"),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          controller: phoneNumber,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Teléfono",
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Dejanos un mensaje",
                    style: TextStyle(color: primary),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: message,
                    maxLines: 5,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Mensaje"),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) => true,
                        activeColor: primary,
                      ),
                      const Text(
                        "*Aceptas términos y condiciones",
                        style: TextStyle(color: primary),
                      ),
                      const SizedBox(width: 100),
                      Expanded(
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(primary),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Enviar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
