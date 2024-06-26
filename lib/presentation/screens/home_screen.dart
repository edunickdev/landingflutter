import 'package:flutter/material.dart';
import 'package:ong/presentation/shared/footer/footer_widget.dart';
import 'package:ong/presentation/widgets/navbar/carousel_widget.dart';
import 'package:ong/presentation/widgets/navbar/navbarmain.dart';

class HomeScreen extends StatelessWidget {

  static const name = "/INICIO";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              expandedHeight: NavBarMainWidget.preferredHeight,
              flexibleSpace: NavBarMainWidget(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  CarouselWidget(height: size.height - NavBarMainWidget.preferredHeight - 50),
                  const SizedBox(height: 20),
                  FooterWidget(height: size.height / 2 + 30, width: size.width / 2 + 30,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

