import 'package:flutter/material.dart';
import 'package:rabegn/widgets/customtextfield.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBar(),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryContainer('All'),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryContainer('Some'),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryContainer('Breakfast'),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryContainer('Breakfast'),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryContainer('Breakfast'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CategoryPost(context, () {
                  Navigator.pushNamed(context, '/recipescreen');
                }),
                const SizedBox(
                  height: 10,
                ),
                CategoryPost(context, () {
                  Navigator.pushNamed(context, '/recipescreen');
                }),
                const SizedBox(
                  height: 10,
                ),
                CategoryPost(context, () {
                  Navigator.pushNamed(context, '/recipescreen');
                }),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell CategoryPost(BuildContext context, VoidCallback navigator) {
    return InkWell(
      onTap: navigator,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images.jpeg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              left: 16,
              top: 16,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Text('tsome'),
              ),
            ),
            Positioned(
              right: 16,
              top: 16,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Icon(Icons.favorite),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 12,
              left: 12,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'title',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('time and bullshit')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container CategoryContainer(String name) {
    return Container(
      height: 75,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(name),
        ],
      ),
    );
  }

  Row SearchBar() {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            hint: 'Search',
            show: false,
            cust: _searchController,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ),
      ],
    );
  }
}
