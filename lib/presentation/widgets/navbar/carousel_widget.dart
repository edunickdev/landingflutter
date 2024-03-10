import 'package:flutter/material.dart';
import 'package:ong/config/theme/constants.dart';

class CarouselWidget extends StatefulWidget {
  final double height;

  const CarouselWidget({super.key, required this.height});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final PageController controller = PageController(initialPage: 1);
  int currentPage = 0;

  final List<String> images = ["images/1.jpg", "images/2.png", "images/3.jpg"];

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

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        images.length,
        (int index) {
          return GestureDetector(
            onTap: () => jumpToPage(index),
            child: Container(
              width: 20,
              height: 20,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentPage == index ? primary : Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 400,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(images[index], fit: BoxFit.cover);
            },
            controller: controller,
            onPageChanged: onPageChanged,
          ),
          Positioned(
            bottom: 20,
            child: Row(
              children: images.map((e) => Container(
                height: 20,
                width: 20,
                child: TextButton(onPressed: (){}, child: Text("")),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
