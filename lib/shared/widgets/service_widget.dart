import 'package:mykotche/core.dart';
import 'package:flutter/material.dart';
import 'package:mykotche/models/services.dart';
import 'package:mykotche/shared/styles/colors.dart';

Widget buildService(Service service, [int index]) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(
        right: index != null ? 16 : 0, left: index == 0 ? 16 : 0),
    width: 220,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColorShadow,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                service.horaires,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 11.7,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 95,
          child: Center(
            child: Hero(
              tag: service.type + service.nom,
              child: Image.asset(
                service.images[0],
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          service.type,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 8),
        Text(
          service.nom,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Text(
          "per " +
              (service.horaires == "Daily"
                  ? "day"
                  : service.horaires == "Weekly"
                      ? "week"
                      : "month"),
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
