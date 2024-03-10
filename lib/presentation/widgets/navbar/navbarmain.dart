import 'package:flutter/material.dart';

import '../../../config/theme/constants.dart';
import 'nav_item.dart';

class NavBarMainWidget extends StatelessWidget {
  static const double preferredHeight = 60;

  const NavBarMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Cantos de la tierra"),
              const SizedBox(width: 10),
              const NavItem(text: "INICIO"),
              const SizedBox(width: 10),
              const NavItem(text: "IMPACTO"),
              const SizedBox(width: 10),
              const NavItem(text: "NOSOTROS"),
              const SizedBox(width: 10),
              const NavItem(text: "ALIADOS"),
              const SizedBox(width: 10),
              const NavItem(text: "NOTICIAS"),
              const SizedBox(width: 10),
              SizedBox(
                width: size.width / 8,
                child: FilledButton.tonal(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(secondary),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Donación",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width / 100,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
