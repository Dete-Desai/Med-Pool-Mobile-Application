// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'searchbar.dart';

class PopupListItemWidget extends StatelessWidget {
  const PopupListItemWidget(this.item);

  final LeaderBoard item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        item.username,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class LeaderBoard {
  final String username = "";
}
