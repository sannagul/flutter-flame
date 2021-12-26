import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_todo/header.dart';
import 'package:flutter_todo/list_cards_view.dart';
import 'package:flutter_todo/tabs.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 8),
            Header(),
            const SizedBox(height: 40),
            Tabs(),
            const SizedBox(height: 8),
            ListCardsView(),
          ],
        ),
      ),
    );
  }
}


