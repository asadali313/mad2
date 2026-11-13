import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  final List<String> captions = const [
    'Home',
    'List',
    'About',
    'School',
    'Book',
    'Person',
  ];

  final List<IconData> icons = const [
    Icons.home,
    Icons.list,
    Icons.info,
    Icons.school,
    Icons.book,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: captions.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icons[index], color: Colors.blue, size: 36),
              const SizedBox(height: 8),
              Text(captions[index]),
            ],
          ),
        );
      },
    );
  }
}
