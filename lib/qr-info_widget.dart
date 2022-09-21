import 'package:flutter/material.dart';

class QrInfoWidget extends StatelessWidget {
  const QrInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 130),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            'YOUR QR CODE',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: size.width * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            // child: Image.asset('photos/qr-code.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Show at boarding gate',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
