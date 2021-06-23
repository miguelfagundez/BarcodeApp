import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_barcode_reader/services/provider_ui.dart';
import 'package:my_barcode_reader/ui/Websites.dart';
import 'package:my_barcode_reader/ui/historial_maps.dart';
import 'package:my_barcode_reader/widgets/ScanButton.dart';
import 'package:my_barcode_reader/widgets/custom_navegation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Historial'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.delete_forever),
              onPressed: (){},
          ),

        ],
      ),
      body: Center(
        child: _HomeScreenBody(),
      ),
      bottomNavigationBar: CustomNavBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  
}

class _HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenu;

    switch(currentIndex){

      case 0:
        return HistorialMaps();
      case 1:
        return Websites();
      default:
        return HistorialMaps();
    }
  }
}

