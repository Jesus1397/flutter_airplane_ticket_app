import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
              ),
              SvgPicture.asset(
                'assets/photos/air-plane.svg',
                width: 80,
                color: Colors.white,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'ZG',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Zagreb',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Container(
                width: 20,
                height: 20,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xffEB6A4B),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'SA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Sarajevo',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Thu, May 02',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '20:50',
                    style: TextStyle(
                      color: Color.fromARGB(160, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Thu, May 02',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '22:00',
                    style: TextStyle(
                      color: Color.fromARGB(160, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 80),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Passenger',
                style: TextStyle(
                  color: Color.fromARGB(160, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              Text(
                'Avendaño',
                style: TextStyle(
                  color: Color.fromARGB(190, 255, 255, 255),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Seat',
                      style: TextStyle(
                        color: Color.fromARGB(160, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '24A',
                      style: TextStyle(
                        color: Color.fromARGB(190, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Gate',
                        style: TextStyle(
                          color: Color.fromARGB(160, 255, 255, 255),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '4F',
                        style: TextStyle(
                          color: Color.fromARGB(190, 255, 255, 255),
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Class',
                      style: TextStyle(
                        color: Color.fromARGB(160, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Bussines',
                      style: TextStyle(
                        color: Color.fromARGB(190, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Boarding Time',
                      style: TextStyle(
                        color: Color.fromARGB(160, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '21:45, May 02',
                      style: TextStyle(
                        color: Color.fromARGB(190, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Flight',
                style: TextStyle(
                  color: Color.fromARGB(160, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              Text(
                'GA 250',
                style: TextStyle(
                  color: Color.fromARGB(190, 255, 255, 255),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const Spacer(),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/photos/logo.jpg'),
            ),
            title: Text(
              'COMPANY NAME',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              'An airline is a company that provides air transport services for traveling.',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
