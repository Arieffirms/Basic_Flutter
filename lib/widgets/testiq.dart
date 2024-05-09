import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:faker/faker.dart';

class TestIq extends StatelessWidget {
  const TestIq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ChatItems(
            imageUrl: "https://picsum.photos/id/$index/200/300",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          );
        },
      ),
    );
  }
}

class ChatItems extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItems({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text("10:10 wib"),
    );
  }
}
