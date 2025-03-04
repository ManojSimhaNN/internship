import 'package:basic_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatefulWidget {
  final Coffee coffee;
  final void Function()? onPressed;
  final Widget icon;
  const CoffeeTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});

  @override
  State<CoffeeTile> createState() => _CoffeeTileState();
}

class _CoffeeTileState extends State<CoffeeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: ListTile(
        title: Text(
          widget.coffee.name,
          style: const TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          widget.coffee.price.toString(),
          style: const TextStyle(fontSize: 15),
        ),
        leading: Image.asset(
          widget.coffee.imagePath,
        ),
        trailing: IconButton(
          onPressed: widget.onPressed,
          icon: widget.icon,
        ),
      ),
    );
  }
}
