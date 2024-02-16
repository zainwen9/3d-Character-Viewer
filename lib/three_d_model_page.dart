import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class threed extends StatefulWidget {
  const threed({super.key});

  @override
  State<threed> createState() => _threedState();
}
O3DController controller= O3DController();

class _threedState extends State<threed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          '@zain_dev_',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
           O3D(
            controller: controller,
            cameraControls: false,
              src:
                  'https://models.readyplayer.me/65ad38ae47897e975a8f10f7.glb'),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    controller.cameraOrbit(0, 75, 70);
                    controller.cameraTarget(0, 0.95, -2.2);
                  },
                  child: const Icon(Icons.zoom_in),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //1
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () {
                        controller.cameraOrbit(90, 75, 70);
                        controller.cameraTarget(1, 1, 0);
                      },
                      child: const Icon(Icons.swipe_left_alt_rounded),
                    ),
                
                
                    SizedBox(width: 15,),
                    //2
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () {
                        controller.cameraOrbit(0, 75, 70);
                        controller.cameraTarget(0, 0.85, 0);
                      },
                      child: const Icon(Icons.center_focus_strong),
                    ),
                
                    SizedBox(width: 15,),
                    //3
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () {
                        controller.cameraOrbit(-90, 75, 70);
                        controller.cameraTarget(-1, 1, 0);
                      },
                      child: const Icon(Icons.swipe_right_alt_rounded),
                    ),
                  ],
                ),

                SizedBox(height: 15,),
                //3
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    controller.cameraControls=true;
                  },
                  child: const Icon(Icons.threed_rotation_outlined),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
