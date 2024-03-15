import 'package:flutter/material.dart';
import 'package:ong/presentation/widgets/navbar/navbarmain.dart';

class NosotrosScreen extends StatelessWidget {
  static const name = "ALIADOS";
  const NosotrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
