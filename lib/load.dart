import 'package:flutter/material.dart';
import 'package:grouney/profile.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
            Text(':그룹여행 그러니',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Kbizgo'
              ),
            )
          ],
        )
      ),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("오류"),
      ),
    );
  }
}



class Load extends StatelessWidget {
  const Load({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(context),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: SplashScreen());
        }
        else if (snapshot.hasError) {
          return MaterialApp(home: ErrorScreen());
        }
        else {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue
            ),
            home: snapshot.data,
            builder: (context, child) => MediaQuery(
              child: child!,
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: MediaQuery.of(context)
                    .textScaleFactor
                    .clamp(0.95, 1.05)
              ),
            ),
          );
        }

      }
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future<Widget?> initialize(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 1000));

    // . . .
    // 초기 로딩 작성
    // . . .

    return Profile(); // 초기 로딩 완료 시 띄울 앱 첫 화면
  }
}