import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text(
            'Calibre sample',
            style: TextStyle(
              fontFamily: 'Calibre',
              color: Colors.white,
            ),
          ),
          Text(
            'SF Mono sample',
            style: TextStyle(
              fontFamily: 'SFMono',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
