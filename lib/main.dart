import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Object placa;
  late Object animal;
  late Object tierra;
  late Object ukelele;
  late Object ukelele2;
  late Object otro;

  @override
  void initState() {
    placa = Object(fileName: "assets/placa3d/3D/PLACA.obj");
    animal = Object(fileName: "assets/animal/Alien Animal.obj");
    tierra = Object(fileName: "assets/tierra/earth/earth_ball.obj");
    ukelele = Object(fileName: "assets/ukelele/Ukulele_expo_2.obj");
    ukelele2 = Object(fileName: "assets/ukelele2/Ukulele.obj");
    otro = Object();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ukelele',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Koala ukelele'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              Expanded(
                child: Cube(
                  onSceneCreated: (scene) {
                    scene.world.add(ukelele);
                    scene.camera.zoom = 10;
                  },
                ),
              ),

              // Expanded(
              //   child: Cube(
              //     onSceneCreated: (scene) {
              //       scene.world.add(placa);
              //       scene.camera.zoom = 10;
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: Cube(
              //     onSceneCreated: (scene) {
              //       scene.world.add(animal);
              //       scene.camera.zoom = 10;
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: Cube(
              //     onSceneCreated: (scene) {
              //       scene.world.add(tierra);
              //       scene.camera.zoom = 10;
              //     },
              //   ),
              // ),
            ]),
          ),
        ),
      ),
    );
  }
}
