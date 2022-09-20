import 'package:flutter/material.dart';
import 'package:flutter_airplane_ticket_app/clipper.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airplane ticket app',
      theme: ThemeData(
        fontFamily: 'MerriweatherSans',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCollapsed = false;
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.red,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const BackgroundWidget(),
            FilterWidget(size: size),
            ContentWidget(size: size),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              right: isCollapsed ? 65 : -size.width,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: size.height,
                      width: size.width + 90,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    top: size.height * 0.65 + 37,
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isCollapsed = !isCollapsed;
                      }),
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'photos/qr.svg',
                            color: Colors.white,
                            width: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: size.height * 0.65 + 37,
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isCollapsed = !isCollapsed;
                      }),
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'photos/air-plane.svg',
                            color: Colors.white,
                            height: 26,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: const [
          Text(
            'Texto',
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      color: const Color.fromARGB(117, 72, 106, 219),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'photos/background.jpg',
      fit: BoxFit.cover,
    );
  }
}
