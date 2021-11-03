// To parse this JSON data, do
//
//     final unidadeSaude = unidadeSaudeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<UnidadeSaude> unidadeSaudeFromJson(String str) => List<UnidadeSaude>.from(
    json.decode(str).map((x) => UnidadeSaude.fromJson(x)));

String unidadeSaudeToJson(List<UnidadeSaude> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UnidadeSaude {
  UnidadeSaude({
    required this.idEscola,
    required this.escolaResumido,
    required this.escolaCompleto,
    required this.diretor,
    required this.contato,
    required this.telefone,
    required this.latitude,
    required this.longitude,
    required this.endereco,
    required this.email,
    required this.servicos,
  });

  String idEscola;
  String escolaResumido;
  String escolaCompleto;
  String diretor;
  String contato;
  String telefone;
  String latitude;
  String longitude;
  String endereco;
  String email;
  List<Servico> servicos;

  factory UnidadeSaude.fromJson(Map<String, dynamic> json) => UnidadeSaude(
        idEscola: json["ID_ESCOLA"],
        escolaResumido: json["ESCOLA_RESUMIDO"],
        escolaCompleto: json["ESCOLA_COMPLETO"],
        diretor: json["DIRETOR"],
        contato: json["CONTATO"],
        telefone: json["TELEFONE"],
        latitude: json["LATITUDE"],
        longitude: json["LONGITUDE"],
        endereco: json["ENDERECO"],
        email: json["EMAIL"],
        servicos: List<Servico>.from(
            json["SERVICOS"].map((x) => Servico.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ID_ESCOLA": idEscola,
        "ESCOLA_RESUMIDO": escolaResumido,
        "ESCOLA_COMPLETO": escolaCompleto,
        "DIRETOR": diretor,
        "CONTATO": contato,
        "TELEFONE": telefone,
        "LATITUDE": latitude,
        "LONGITUDE": longitude,
        "ENDERECO": endereco,
        "EMAIL": email,
        "SERVICOS": List<dynamic>.from(servicos.map((x) => x.toJson())),
      };
}

class Servico {
  Servico({
    required this.exame,
    required this.consulta,
    required this.vacinas,
    required this.consulta2,
  });

  String exame;
  String consulta;
  String vacinas;
  String consulta2;

  factory Servico.fromJson(Map<String, dynamic> json) => Servico(
        exame: json["exame"],
        consulta: json["consulta"],
        vacinas: json["vacinas"] == null ? null : json["vacinas"],
        consulta2: json["consulta2"] == null ? null : json["consulta2"],
      );

  Map<String, dynamic> toJson() => {
        "exame": exame,
        "consulta": consulta,
        "vacinas": vacinas == null ? null : vacinas,
        "consulta2": consulta2 == null ? null : consulta2,
      };
}
