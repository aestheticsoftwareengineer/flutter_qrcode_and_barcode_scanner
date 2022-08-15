import 'package:ase_qrcode_and_barcode_scanner/ui/scanner_screen.dart';
import 'package:flutter/material.dart';


class ASEScannerSplashScreen extends StatefulWidget {
  const ASEScannerSplashScreen({Key? key}) : super(key: key);

  @override
  _ASEScannerSplashScreenState createState() => _ASEScannerSplashScreenState();
}

class _ASEScannerSplashScreenState extends State<ASEScannerSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => const ScannerScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/ase_logo_transparent.png'),
            )
          ),
        ),
      ),
    );
  }
}