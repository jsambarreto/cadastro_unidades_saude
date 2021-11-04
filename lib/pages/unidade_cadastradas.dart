import 'package:flutter/material.dart';

import 'nav_drawer.dart';

class UnidadesCadastradas extends StatelessWidget {
  const UnidadesCadastradas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text('Unidades Cadastradas'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('Exibição das unidades de saúde cadastradas'),
          ],
        ),
      ),
    );
  }
}
