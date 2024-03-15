// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ong/config/theme/constants.dart';

import '../../providers/navbar_providers.dart';

class NavItem extends ConsumerWidget {
  final String text;

  const NavItem({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(selected) == text;
    const inactiveColor = Colors.black;
    final size = MediaQuery.of(context).size;

    return MouseRegion(
      child: GestureDetector(
        onTap: () {
          ref.read(selected.notifier).update((state) => state = text);
          context.go(text);
        },
        child: Column(
          children: [
            Text(
              text.split("/")[1],
              style: TextStyle(
                color:
                    isSelected ? primary : inactiveColor,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width / 100
              ),
            ),
            const SizedBox(height: 3),
            AnimatedContainer(
              duration:
                  const Duration(milliseconds: 200), 
              curve: Curves.easeInOut,
              height: isSelected ? 2 : 0,
              width: size.width / 13,
              color: primary,
            ),
          ],
        ),
      ),
    );
  }
}


