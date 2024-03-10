import 'package:flutter/material.dart';
import 'package:ong/config/theme/constants.dart';

class ElementCarousel extends StatelessWidget {
  final String title;
  final String subtitle;
  final int index;
  final String urlPath;

  const ElementCarousel({
    super.key,
    required this.title,
    required this.subtitle,
    required this.index,
    required this.urlPath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(urlPath, fit: BoxFit.cover)),
        Positioned(
          left: 40,
          bottom: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle.split("-")[0],
                style: const TextStyle(color: primary, fontSize: 55, fontWeight: FontWeight.bold),
                maxLines: 3,
              ),
              Text(
                subtitle.split("-")[1],
                style: const TextStyle(color: primary, fontSize: 55, fontWeight: FontWeight.bold),
                maxLines: 3,
              )
            ],
          ),
        ),
      ],
    );
  }
}
