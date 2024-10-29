import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProviderClass.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  List<String> imageList = [
    "assets/images/tomato.jpg",
    "assets/images/grapes.jpg",
    "assets/images/banana.jpg",
    "assets/images/b2.jpg",
    "assets/images/orange.jpg",
    "assets/images/apple.jpg",
    "assets/images/straberry.jpg",
    "assets/images/green.jpg",
    "assets/images/fruit.jpg",
    "assets/images/b1.jpg",
  ];
  List<String> fruitName = [
    "Tomato",
    "Grapes",
    "Banana",
    "Peach",
    "Orange",
    "Apple",
    "Straberry",
    "Grapes",
    "Fruit",
    "Cute",
  ];
  List<String> fruitsPrice = [
    "Rs.250",
    "Rs.330",
    "Rs.120",
    "Rs.550",
    "Rs.240",
    "Rs.210",
    "Rs.540",
    "Rs.440",
    "Rs.350",
    "Rs.5000",
  ];
  @override
  Widget build(BuildContext context) {
    debugPrint("Rebuild Widget Again");
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageList[index]), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fruitName[index],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const Text(
                    "1000 ready stock",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    fruitsPrice[index],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: Consumer<ProviderClass>(
                  builder: (context, value, child) {
                    return IconButton(
                        onPressed: () {
                          value.toggleFavorite(index);
                        },
                        icon: value.favoriteStates[index]
                            ? const Icon(
                                Icons.favorite_outline,
                                size: 40,
                                color: Colors.black,
                              )
                            : const Icon(
                                Icons.favorite,
                                size: 40,
                                color: Colors.black,
                              ));
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
