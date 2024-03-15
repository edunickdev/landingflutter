import 'package:flutter/material.dart';
import 'package:ong/presentation/widgets/navbar/navbarmain.dart';

class ImpactoScreen extends StatelessWidget {
  static const name = "IMPACTO";
  const ImpactoScreen({super.key});

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
