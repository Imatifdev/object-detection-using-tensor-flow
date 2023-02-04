// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tflite/flutter_tflite.dart';

// import '../main.dart';
// class DetectionScreen extends StatefulWidget {
//   const DetectionScreen({super.key});

//   @override
//   State<DetectionScreen> createState() => _DetectionScreenState();
// }

// class _DetectionScreenState extends State<DetectionScreen> {
  
// CameraImage? cameraImage;
// CameraController? cameraController;
// initCamera() {
//   cameraController = CameraController(cameras[0], ResolutionPreset.medium);
//   cameraController!.initialize().then((value) {
//     if (!mounted) return;
//     setState(() {
//       cameraController!.startImageStream((image) {
//           cameraImage = image;
//           runModel();
//       });
//     });
//   });
// }
// runModel() async {
//   //recognitionsList = await Tflite.detectObjectOnFrame(
//     bytesList: cameraImage!.planes.map((plane) {
//       return plane.bytes;
//     }).toList(),
//     imageHeight: cameraImage!.height,
//     imageWidth: cameraImage!.width,
//     imageMean: 127.5,
//     imageStd: 127.5,
//     numResultsPerClass: 1,
//     threshold: 0.4,
//   );

//   setState(() {
//     cameraImage;
//   });
// }
// Future loadModel() async {
//   Tflite.close();
//   await Tflite.loadModel(
//       model: "assets/ssd_mobilenet.tflite",
//       labels: "assets/ssd_mobilenet.txt");
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
          
//         ],
//       ),
//     );
//   }
// }