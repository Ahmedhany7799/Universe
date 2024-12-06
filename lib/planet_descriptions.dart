import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/planets_model.dart';

class PlanetDescriptions extends StatefulWidget {
  const PlanetDescriptions({super.key, required this.planets});
  final PlanetsModel planets;

  @override
  State<PlanetDescriptions> createState() => _PlanetDescriptionsState();
}

class _PlanetDescriptionsState extends State<PlanetDescriptions> {
  late Flutter3DController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Flutter3DController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top section with image and title
            Container(
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/5.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // Back icon
                  Positioned(
                    top: 45,
                    left: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Title
                  Positioned(
                    top: 50,
                    left: 180,
                    child: Text(
                      "${widget.planets.name}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // Subtitle
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      widget.planets.title.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // 3D Viewer Section
            SizedBox(
              height: 300,
              child: Flutter3DViewer(
                controller: _controller,
                src: widget.planets.image_3d.toString(),
              ),
            ),
            const SizedBox(height: 20),
            // About Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                widget.planets.info.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Facts Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Distance from Sun (km): ${widget.planets.distance} \n'
                'Length of Day (hours):${widget.planets.length} \n'
                'Orbital Period (Earth years): ${widget.planets.year}\n'
                'Radius (km): ${widget.planets.radius} \n'
                'Mass (kg): ${widget.planets.mass}\n'
                'Gravity (m/s²): ${widget.planets.gravity}\n'
                'Surface Area (km²): ${widget.planets.area}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
