import 'package:flutter/material.dart';
import 'package:space_app/planet_descriptions.dart';
import 'package:space_app/planets_model.dart';

class Mainhome extends StatefulWidget {
  const Mainhome({super.key});

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  final List<PlanetsModel> planets = plants;

  int currentIndex = 2;

  void nextPlanet() {
    setState(() {
      currentIndex = (currentIndex + 1) % planets.length;
    });
  }

  void previousPlanet() {
    setState(() {
      currentIndex = (currentIndex - 1 + planets.length) % planets.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Image(
            image: AssetImage("assets/images/3.png"),
          ),
          const SizedBox(height: 24),
          Container(
            width: 342,
            height: 339,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(planets[currentIndex].image!),
              ),
            ),
          ),
          const SizedBox(height: 39),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: const Color(0xffEE403D),
                  ),
                  child: IconButton(
                    onPressed: previousPlanet,
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  planets[currentIndex].name!,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: const Color(0xffEE403D),
                  ),
                  child: IconButton(
                    onPressed: nextPlanet,
                    icon: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
            height: 60,
            width: 342,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: const Color(0xffEE403D),
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PlanetDescriptions(
                      planets: planets[currentIndex],
                    ),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore ${planets[currentIndex].name!}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
