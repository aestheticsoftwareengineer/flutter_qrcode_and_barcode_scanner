import 'package:ase_qrcode_and_barcode_scanner/ui/qr_overlay.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  MobileScannerController cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset('assets/icons/ase_logo_transparent.png', height: 45,width : 45,),
            const SizedBox(width: 10,),
            const Text('ASE QRScanner',style: TextStyle(color: Colors.green),),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              cameraController.switchCamera();
            },
            icon: const Icon(Icons.cameraswitch_rounded),
          ),
        ],
      ),
      body: Stack(
        children: [
          MobileScanner(
            allowDuplicates: false,
            controller: cameraController,
            onDetect: (barcode, args) {
              debugPrint('Barcode found! ${barcode.rawValue!}');
            },
          ),
          QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5)),
        ],
      ),
    );
  }
}
