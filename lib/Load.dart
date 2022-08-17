import 'package:flutter/material.dart';

class Load extends StatefulWidget {
  const Load({Key? key}) : super(key: key);

  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/main_logo.png',
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.22,
            ),
            Text('Grouney',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'KBIZgo'
              ),
            ),
            Text(':그룹여행 그러니')
          ],
        ),
      ),
    );
  }
}
