import 'package:flutter/material.dart';
import 'package:flutter_airplane_ticket_app/qr-info_widget.dart';
import 'package:flutter_svg/svg.dart';

import 'background_widget.dart';
import 'clipper.dart';
import 'content_widget.dart';
import 'filter_widgeet.dart';

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
                      width: size.width + 65,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffEB6A4B),
                            Color(0xffD55434),
                          ],
                        ),
                      ),
                      child: const QrInfoWidget(),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    top: size.height * 0.65 + 37,
                    child: GestureDetector(
                      onTap: () => setState(
                        () {
                          isCollapsed = !isCollapsed;
                        },
                      ),
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xff225173),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/photos/qr.svg',
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
                      onTap: () => setState(
                        () {
                          isCollapsed = !isCollapsed;
                        },
                      ),
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffEB6A4B),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/photos/air-plane.svg',
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
