import 'package:cadastro_unidades_saude/models/unidade_saude_model.dart';
import 'package:flutter/material.dart';

import 'nav_drawer.dart';

class CadastroUnidadeHome extends StatefulWidget {
  final UnidadeSaude? unidadeSaude;

  const CadastroUnidadeHome({Key? key, this.unidadeSaude}) : super(key: key);

  @override
  _CadastroUnidadeHomeState createState() => _CadastroUnidadeHomeState();
}

class _CadastroUnidadeHomeState extends State<CadastroUnidadeHome> {
  var _exames = [
    'Raio-X',
    'Hemograma',
    'Urina',
    'Fezes',
  ];
  var _consultas = [
    'Pedriatria',
    'Cardiologia',
    'Clinico geral',
    'Obstetricia',
    'Ginecologia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('Cadastro de Unidade de Saúde'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Nome da unidade',
                        ),
                        initialValue: widget.unidadeSaude?.escolaResumido ?? '',
                        onChanged: (value) {
                          widget.unidadeSaude?.escolaResumido = value;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Endereço',
                        ),
                        initialValue: widget.unidadeSaude?.endereco ?? '',
                        onChanged: (value) {
                          widget.unidadeSaude?.endereco = value;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Telefone',
                        ),
                        initialValue: widget.unidadeSaude?.telefone ?? '',
                        onChanged: (value) {
                          widget.unidadeSaude?.telefone = value;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        initialValue: widget.unidadeSaude?.email ?? '',
                        onChanged: (value) {
                          widget.unidadeSaude?.email = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),

              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Diretor da Unidade',
                        ),
                        initialValue: widget.unidadeSaude?.diretor ?? '',
                        onChanged: (value) {
                          widget.unidadeSaude?.escolaResumido = value;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Contato da unidade',
                        ),
                        initialValue: widget.unidadeSaude?.contato ?? '',
                        onChanged: (value) {
                          widget.unidadeSaude?.escolaResumido = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          labelText: 'Consultas',
                        ),
                        //value: widget.unidadeSaude?.servicos ?? '',
                        items: _consultas.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (value) {
                          //widget.unidadeSaude?.servicos = value;
                        },
                      ),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          labelText: 'Exames',
                        ),
                        //value: widget.unidadeSaude?.servicos ?? '',
                        items: _exames.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (value) {
                          //widget.unidadeSaude?.servicos = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Serviços',
              //   ),
              //   onChanged: (value) {
              //     widget.unidadeSaude?.servicos = value as List<Servico>;
              //   },
              // ),

              // ElevatedButton(
              //   child: const Text('Cadastrar'),
              //   onPressed: () {
              //     if (widget.unidadeSaude != null) {
              //       UnidadeSaude.update(widget.unidadeSaude);
              //     } else {
              //       UnidadeSaude.create(widget.unidadeSaude);
              //     }
              //     Navigator.pop(context);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
