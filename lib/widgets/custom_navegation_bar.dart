import 'package:flutter/material.dart';
import 'package:my_barcode_reader/services/provider_ui.dart';
import 'package:provider/provider.dart';

class CustomNavBar extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenu;

    return BottomNavigationBar(
        elevation: 0.0,
        onTap: (index) => uiProvider.selectedOption = index,
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration),
              label: 'Website'
          ),
        ],
    );
  }
}
