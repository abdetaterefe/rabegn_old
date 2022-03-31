import 'package:flutter/material.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(Icons.favorite),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TopRecipeInfoWidget(context),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      IngredientsWidget('Ingredients'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      preparationWidget()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: Container(
      //   alignment: Alignment.center,
      //   height: 50,
      //   width: MediaQuery.of(context).size.width / 3,
      //   decoration: BoxDecoration(
      //     color: Colors.blue,
      //     borderRadius: BorderRadius.circular(10),
      //   ),
      //   child: const Text(
      //     'Start',
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Column preparationWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Preparations',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'first pour water in to the dishes and boil it',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'add shiro to the water and mix it ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'add berbere ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "and done that's all",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'now all you have to do is eat the shiro with enjera',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Column IngredientsWidget(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'shiro ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          '1 spoons of berbere ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'zeyte if you have ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'injera ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'erde ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  SizedBox TopRecipeInfoWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            color: Colors.blue.withOpacity(0.7),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.red.withAlpha(220),
                    Colors.red.withAlpha(180),
                    Colors.red.withAlpha(140),
                    Colors.red.withAlpha(100),
                    Colors.transparent,
                  ],
                  stops: const [0.1, 0.25, 0.5, 0.7, 1],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'discription of the title',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
