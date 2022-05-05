import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mykotche/models/utilitaire.dart';
import 'package:mykotche/pages/utilities_details/details_utilities_cars_controller.dart';

import '../../shared/widgets/app_bar_widget.dart';

class DetailsUtilitiesCarsView extends GetView<DetailsUtilitiesCarsController> {
   DetailsUtilitiesCarsView({Key key}) : super(key: key);

  final utilitaire = Get.arguments as Utilitaire;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(

                title: "Détail utilitaire",
              ),
              buildHeader(),
              Divider(),
              Expanded(
                child: buildInfoUtilities(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildHeader(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              height: 200,
              child: Image.network(utilitaire.imageUtil, fit: BoxFit.contain,)),
          SizedBox(height: 10),
          Text(utilitaire.titreUtilitaire, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Type : ${utilitaire.typeSymbole}"),

              SizedBox(width: 10,),

              Text("Couleur : ${utilitaire.couleur}"),


            ],
          ),

        ],
      ),
    );
  }
  buildInfoUtilities(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Désignation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),

          SizedBox(height: 5),
          Text(utilitaire.titreUtilitaire, style: TextStyle(fontSize: 15),),

          SizedBox(height: 20),

          Text("Signification", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),

          SizedBox(height: 5),
          Text(utilitaire.descriptionUtil, style: TextStyle( fontSize: 15),),

          SizedBox(height: 20),
          Text("Que faire ?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),

          SizedBox(height: 5),
          Text(utilitaire.bonFaire, style: TextStyle( fontSize: 15),),


        ],
      ),
    );
  }
}
