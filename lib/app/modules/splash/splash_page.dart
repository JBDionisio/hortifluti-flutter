import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 1500)).then(
      (value) => Modular.to.pushReplacementNamed('/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HortiFruti app'.toUpperCase(),
              style: TextStyle(
                fontSize: 24,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
