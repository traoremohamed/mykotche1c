import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mykotche/models/utilitaire.dart' as uti;
import 'package:mykotche/pages/utilities/utilities_cars_controller.dart';

import '../../core.dart';

class UtilitiesCarsView extends GetView<UtilitiesCarsController> {
  UtilitiesCarsView({Key key}) : super(key: key);

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
                title: "Utilitaires",
              ),
              SizedBox(height: 18),
              Expanded(
                child: Obx(()=>ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.myUtilities.length,
                  itemBuilder: (context, index){
                    uti.Utilitaire item = controller.myUtilities[index];
                    return GestureDetector(
                        onTap: () =>
                            Get.toNamed(Routes.DETAILS_UTILITIES_CARS, arguments: item),
                        child: buildUtilitiesItems(item));
                  },
                )),
              ),
            ],
          ),
        ),
      ),

    );
  }



  Widget buildUtilitiesItems(uti.Utilitaire utilitaire, [int index]) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(
          right: index != null ? 16 : 0, left: index == 0 ? 16 : 0,
          bottom: index != 0 ? 16 : 0),
      width: double.infinity,
      child: ListTile(
        leading: Container(
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(utilitaire.imageUtil),
                fit: BoxFit.contain
              )
            ),
           ),
        title: Text(utilitaire.titreUtilitaire, style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Expanded(
          child: Row(
            children: [
              Text("Type : ${utilitaire.typeSymbole}"),

              SizedBox(width: 10,),

              Text("Couleur : ${utilitaire.couleur}"),


            ],
          ),
        ),
      )
    );
  }

}
