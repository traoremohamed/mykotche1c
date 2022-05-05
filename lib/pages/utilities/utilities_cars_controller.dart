import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mykotche/models/utilitaire.dart';

import '../../services/auth_service.dart';

class UtilitiesCarsController extends GetxController{

  var myUtilities = <Utilitaire>[].obs;



  @override
  void onReady() async {
    getUtilitiesList();
    super.onReady();
  }

  void getUtilitiesList() {

    AuthService authService = AuthService();

    authService.utilitairecar().then((response){
      int statusCode = response.statusCode;

      log("===========================================================") ;
      log("Current Car Utilities are : ${response.data}") ;
      log("===========================================================") ;


      if(statusCode == 200){
        myUtilities.clear();
        var result = response.data as Map;

        result["data"].forEach((value){
          log("Value :::::::: $value");
          Utilitaire utilitaire = Utilitaire.fromJson(value);
          myUtilities.add(utilitaire);
        });

      }else{
        debugPrint("error ${response.statusCode}");
      }

    });

  }
}