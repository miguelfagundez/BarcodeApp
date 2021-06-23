import 'package:flutter/material.dart';
import 'package:my_barcode_reader/services/provider_ui.dart';
import 'package:my_barcode_reader/ui/home_screen.dart';
import 'package:my_barcode_reader/ui/mapa_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyQRApp());

class MyQRApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => new UiProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Barcode Reader',
        initialRoute: 'home',
        routes: {
          'home':(BuildContext context) => HomeScreen(),
          'mapa':(BuildContext context) => MapaScreen()
      },
      ),
    );
  }
}
