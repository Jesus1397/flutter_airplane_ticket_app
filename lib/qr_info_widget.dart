import 'package:flutter/material.dart';

class QrInfoWidget extends StatelessWidget {
  const QrInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        left: size.width * 0.25,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const Text(
            'YOUR QR CODE',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: size.width * 0.4,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset('assets/photos/qr-code.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Show at boarding gate',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Plane',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Text(
                        'AIRBUS A330-300',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                      ),
                      const Text(
                        'Learn more',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Flight ticket by',
                      style: TextStyle(color: Colors.white70),
                    ),
                    const Text(
                      'AIRPORT CETIFICATE DD',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Generally, airline companies are recognized with an air operating certificate or license issued by a governmental aviation body. Airlines may be scheduled or charter operators.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
