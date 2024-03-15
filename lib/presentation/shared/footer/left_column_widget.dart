import 'package:flutter/material.dart';
import 'package:ong/config/theme/constants.dart';

class LeftColumnWidget extends StatelessWidget {
  const LeftColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            "Encuentranos en nuestras redes.",
            style: TextStyle(
                color: primary, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          "Pariatur in elit occaecat occaecat magna non non sit.",
          style: TextStyle(color: Colors.white, fontSize: size.width / 60),
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.email,
                  color: primary,
                ),
                const SizedBox(width: 10),
                Text("Sunt sit est proident deserunt reprehenderit.", style: TextStyle(color: primary, fontSize: size.width / 120),)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(
                  Icons.facebook,
                  color: primary,
                ),
                const SizedBox(width: 10),
                Text("Adipisicing nulla id dolore nostrud sint.", style: TextStyle(color: primary, fontSize: size.width / 120),)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(
                  Icons.play_circle,
                  color: primary,
                ),
                const SizedBox(width: 10),
                Text("Ipsum fugiat proident ullamco laboris qui officia.", style: TextStyle(color: primary, fontSize: size.width / 120),)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(
                  Icons.abc,
                  color: primary,
                ),
                const SizedBox(width: 10),
                Text("Magna ea laborum id veniam nulla.", style: TextStyle(color: primary, fontSize: size.width / 120),)
              ],
            ),
            const SizedBox(height: 20),
          ],
        )
      ],
    );
  }
}
