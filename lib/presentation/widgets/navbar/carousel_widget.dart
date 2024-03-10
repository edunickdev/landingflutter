import 'package:flutter/material.dart';
import 'package:ong/config/theme/constants.dart';
import 'package:ong/presentation/widgets/navbar/element_carousel.dart';

class CarouselWidget extends StatefulWidget {
  final double height;

  const CarouselWidget({super.key, required this.height});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final PageController controller = PageController(initialPage: 1);
  int currentPage = 1;

  final List<Map<String, dynamic>> images = [
    {
      "urlPath": "images/1.jpg",
      "index": 0,
      "title": "Reforzando identidades",
      "subtitle": "a través del arte, -la musica y el deporte."
    },
    {
      "urlPath": "images/2.png",
      "index": 1,
      "title": "Reforzando identidades",
      "subtitle": "a través del arte, -la musica y el deporte."
    },
    {
      "urlPath": "images/3.jpg",
      "index": 2,
      "title": "Reforzando identidades",
      "subtitle": "a través del arte, -la musica y el deporte."
    }
  ];

  void onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  void jumpToPage(int index) {
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: widget.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return ElementCarousel(
                index: images[index]["index"],
                title: images[index]["title"],
                subtitle: images[index]["subtitle"],
                urlPath: images[index]["urlPath"],
              );
            },
            controller: controller,
            onPageChanged: onPageChanged,
          ),
          Positioned(
            left: 40,
            bottom: 30,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: images
                  .map(
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 40,
                      width: 40,
                      child: TextButton(
                        onPressed: () => jumpToPage(index["index"]),
                        child: Text(
                          (index["index"] + 1).toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primary,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
