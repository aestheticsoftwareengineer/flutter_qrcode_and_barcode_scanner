import 'package:ase_qrcode_and_barcode_scanner/ui/ase_splash_screen.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/ase_logo_transparent.png',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 20,),
            const Text('Scan the QR code to login to the app'),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const ASEScannerSplashScreen())),
              child: const Text('Scan QR code'),
            ),
          ],
        ),
      ),
    );
  }
}
