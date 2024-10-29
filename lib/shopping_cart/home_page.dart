import 'package:flutter/material.dart';
import 'package:learn_flutter/shopping_cart/see_all_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(
                      "Your Balance",
                      style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                    ),
                    subtitle: const Text(
                      "Rs.20,055",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    trailing: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
                    leading: const CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("assets/images/green.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/b1.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 17, top: 20, bottom: 20),
                  child: Text(
                    "For You",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 180,
                      width: 160,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/banana.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                    ),
                    Container(
                      height: 180,
                      width: 160,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/grapes.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "See All ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAllScreen(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            child: const Icon(Icons.arrow_forward_rounded),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 180,
                      width: 160,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/fruit.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                    ),
                    Container(
                      height: 180,
                      width: 160,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/grapes.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "See All ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAllScreen(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            child: const Icon(Icons.arrow_forward_rounded),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
