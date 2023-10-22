import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     int ludonumber = 2;
//     return Scaffold(
//       backgroundColor: const Color(0xffed254e),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFed254e),
//         // elevation: 0,
//         centerTitle: true,
//         title: Text(
//           "Ludo App",
//           style: GoogleFonts.aBeeZee(
//             fontSize: 40,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Center(
//         child: Row(children: [
//           Expanded(
//               child: Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child: InkWell(
//                 splashColor: Colors.green,
//                 onTap: () {},
//                 child: Image.asset("images/dece$ludonumber.png")),
//           )),
//           Expanded(
//               child: Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child:
//                 InkWell(onTap: () {}, child: Image.asset("images/dece2.png")),
//           )),
//         ]),
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ludonumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffed254e),
      appBar: AppBar(
        backgroundColor: const Color(0xFFed254e),
        // elevation: 0,
        centerTitle: true,
        title: Text(
          "Ludo App",
          style: GoogleFonts.aBeeZee(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Row(children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: InkWell(
                splashColor: Colors.green,
                onTap: () {
                  setState(() {
                    ludonumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset("images/dece$ludonumber.png")),
          )),
          // Expanded(
          //     child: Padding(
          //   padding: const EdgeInsets.only(left: 20, right: 20),
          //   child:
          //       InkWell(onTap: () {}, child: Image.asset("images/dece2.png")),
          // )),
        ]),
      ),
    );
  }
}
