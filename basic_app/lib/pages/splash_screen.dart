import 'package:basic_app/components/button.dart';
import 'package:basic_app/consts.dart';
import 'package:basic_app/pages/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(padding: EdgeInsets.all(40)),
              //Shop name
              const Center(
                child: Text(
                  "Brew Bar",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ),
              //icon
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset('lib/images/latte-art.png'),
              ),

              //title
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'The art of Coffee!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[600],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              //button
              MyButton(text: "Let's Get Brewing", onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
