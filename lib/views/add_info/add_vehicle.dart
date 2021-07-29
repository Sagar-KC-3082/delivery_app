import 'package:delivery_app/views/add_info/add_docs.dart';
import 'package:delivery_app/views/add_info/add_photo.dart';
import 'package:delivery_app/widgets/custom_text_and_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery_app/configs/constants/app_constants.dart';
import 'package:delivery_app/configs/styles/app_colors.dart';
import 'package:delivery_app/widgets/custom_appbar.dart';
import 'package:delivery_app/widgets/full_width_button.dart';


class AddVehicleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: Container(
                child: Container(
                  height: Get.height*0.93,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBarRowWithCustomIcon(title: "Add Vehicle",),
                      SizedBox(height: 30,),

                     Expanded(
                       child: ListView(
                         shrinkWrap: true,
                         children: [
                           CustomTextAndTextFieldWidget(text: "Vehicle Name",),
                           CustomTextAndTextFieldWidget(text: "Vehicle Type",),
                           CustomTextAndTextFieldWidget(text: "Vehicle Brand",),
                           CustomTextAndTextFieldWidget(text: "Vehicle Color",),
                           CustomTextAndTextFieldWidget(text: "Vehicle Number",),
                         ],
                       ),
                     ),

                      FullWidthButton(
                        color: AppColors.primaryDarkOrange,
                        title: "Continue",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return AddDocumentView();}));
                          // Get.to(AddDocumentView());
                        },
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
