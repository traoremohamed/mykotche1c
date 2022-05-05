// To parse this JSON data, do
//
//     final utilitaire = utilitaireFromJson(jsonString);

import 'dart:convert';

Utilitaire utilitaireFromJson(String str) => Utilitaire.fromJson(json.decode(str));

String utilitaireToJson(Utilitaire data) => json.encode(data.toJson());

class Utilitaire {
  Utilitaire({
    this.idUtilitaire,
    this.titreUtilitaire,
    this.typeSymbole,
    this.couleur,
    this.imageUtil,
    this.descriptionUtil,
    this.bonFaire,
    this.flagUtil,
    this.updatedAt,
    this.createdAt,
  });

  String idUtilitaire;
  String titreUtilitaire;
  String typeSymbole;
  String couleur;
  String imageUtil;
  String descriptionUtil;
  String bonFaire;
  String flagUtil;
  DateTime updatedAt;
  DateTime createdAt;

  factory Utilitaire.fromJson(Map<String, dynamic> json) => Utilitaire(
    idUtilitaire: json["id_utilitaire"],
    titreUtilitaire: json["titre_utilitaire"],
    typeSymbole: json["type_symbole"],
    couleur: json["couleur"],
    imageUtil: json["image_util"],
    descriptionUtil: json["description_util"],
    bonFaire: json["bon_faire"],
    flagUtil: json["flag_util"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id_utilitaire": idUtilitaire,
    "titre_utilitaire": titreUtilitaire,
    "type_symbole": typeSymbole,
    "couleur": couleur,
    "image_util": imageUtil,
    "description_util": descriptionUtil,
    "bon_faire": bonFaire,
    "flag_util": flagUtil,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
  };
}
