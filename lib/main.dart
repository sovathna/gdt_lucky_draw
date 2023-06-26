import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  FlavorConfig(
    name: "DEV",
    color: Colors.red,
    location: BannerLocation.bottomStart,
    variables: {
      "domainId": 0,
      "baseUrl": "https://www.example.com",
    },
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 320.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                    "https://picsum.photos/id/237/1280/720",
                    fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: List.generate(
                  20,
                  (index) => Container(
                    color: index.isOdd ? Colors.white : Colors.black12,
                    height: 100.0,
                    child: Center(
                      child: Text('$index', textScaleFactor: 5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
