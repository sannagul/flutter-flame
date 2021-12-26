import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListCardsView extends StatefulWidget {
  @override
  _ListCardsViewState createState() => _ListCardsViewState();
}

class _ListCardsViewState extends State<ListCardsView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      child: ListView(
        children: const [
          TodoCard(
            name: 'Morning',
            date: '4.20-30',
            imageUrl: 'assets/images/image.jpeg',
          ),
          TodoCard(
            name: 'Noon',
            date: '4.28-31',
            imageUrl: 'assets/images/image.jpeg',
          ),
          TodoCard(
            name: 'Evening',
            date: '4.28-31',
            imageUrl: 'assets/images/image.jpeg',
          ),
        ],
      ),
    );
  }
}

class TodoCard extends StatelessWidget {
  final String name;
  final String date;
  final String imageUrl;

  const TodoCard({
    Key? key,
    required this.name,
    required this.date,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 8, right: 8, bottom: 24),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Row(
        children: <Widget>[
          //image widget
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(32),
            ),
            child: Image.asset(
              imageUrl,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.contain,
            ),
          ),
          //space
          const SizedBox(width: 8),
          //todo name and date
          Column(
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8),
              Text(
                date,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
