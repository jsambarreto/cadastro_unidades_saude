import 'package:cadastro_unidades_saude/pages/unidade_cadastradas.dart';
import 'package:flutter/material.dart';

import 'pages/cadastro_unidade_home.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/cadastro': (context) => const CadastroUnidadeHome(),
        '/unidades_cadastradas': (context) => const UnidadesCadastradas(),
      },
    );
  }
}
