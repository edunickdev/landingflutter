import 'package:flutter/material.dart';
import 'package:ong/presentation/widgets/navbar/carousel_widget.dart';
import 'package:ong/presentation/widgets/navbar/navbarmain.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void dispose() {
    super.dispose();
  }

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
                  Container(
                    width: double.infinity,
                    height: size.height - NavBarMainWidget.preferredHeight - 50,
                    color: Colors.yellow,
                    child: Image.asset("images/1.jpg", fit: BoxFit.cover),
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height - NavBarMainWidget.preferredHeight - 80,
                    color: Colors.yellow,
                    child: Image.asset("images/2.png", fit: BoxFit.cover),
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height - NavBarMainWidget.preferredHeight - 80,
                    color: Colors.yellow,
                    child: Image.asset("images/3.jpg", fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
