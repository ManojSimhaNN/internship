import 'package:basic_app/components/coffee_tile.dart';
import 'package:basic_app/models/coffee.dart';
import 'package:basic_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add coffee to cart
  void addToCart(Coffee coffee) {
    //add to cart
    Provider.of<CoffeeShop>(context, listen: false).addToCart(coffee);

    //let user know it had been successfully added
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text(
          "Successfully Added to cart",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              //heading
              const Text(
                'How would you like your coffee?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),

              //list of coffees
              Expanded(
                  child: ListView.builder(
                      itemCount: value.shop.length,
                      itemBuilder: (context, index) {
                        //get individual coffee
                        Coffee eachCoffee = value.shop[index];

                        //return the tile for this
                        return CoffeeTile(
                          coffee: eachCoffee,
                          icon: const Icon(Icons.add),
                          onPressed: () => addToCart(eachCoffee),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
