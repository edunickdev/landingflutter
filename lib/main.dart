import 'package:flusmic/flusmic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ong/config/routes/web_routes.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Future<FlusmicResponse<Document<Map<String, dynamic>>>> main() async {
      ///Create a new Flusmic instance
      final flusmic = Flusmic(
        prismicEndpoint: 'https://canto-de-la-tierra.cdn.prismic.io/api/v2',
        defaultAuthToken: '',
      );

      ///Use one of our basic methods
      final rootDocument = await flusmic.getDocumentsByType("destacados");

      print(rootDocument.results.length);
      return rootDocument;
    }

    main();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routerConfig: routes,
    );
  }
}
