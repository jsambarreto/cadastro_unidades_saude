import '../widgets/app_logo.dart';
import 'package:flutter/material.dart';

import 'nav_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue[900]),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: appLogo),
            //Center(child: appLogo2),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/secSaude.jpg',
                height: 600,
              ),
              const Text(
                  'Informações sobre o cadastro de unidades de saúde para o qrcode'),
            ],
          ),
        ),
      ),
    );
  }
}
