import 'package:delivery_app/configs/constants/app_constants.dart';
import 'package:delivery_app/configs/styles/app_colors.dart';
import 'package:delivery_app/configs/styles/custom_text_style.dart';
import 'package:delivery_app/widgets/accept_or_decline_widget.dart';
import 'package:delivery_app/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'delivery_successful_screen.dart';

class Map1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/map.png"),
              fit: BoxFit.cover
            )
          ),
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              ImageContainer(),
              Spacer(),

              BlueBox(),
              SizedBox(height: 20,),
              Text("Himalayan Deol",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("7 mins",style: CustomTextStyle.smallTextStyle1(),),
                  Text("7 mins",style: CustomTextStyle.smallTextStyle1(),),
                ],
              ),

              Row(
                children: [
                  Icon(Icons.circle,color: Colors.green,size: 12,),
                  Expanded(child: Container(height: 1,color: Colors.grey,)),
                  Icon(Icons.circle,color: Colors.grey.withOpacity(0.3),size: 20,),
                  Expanded(child: Container(height: 1,color: Colors.grey,)),
                  Icon(Icons.circle,color: Colors.green,size: 12,),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text("You",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                  Text("Restaurant",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                  Text("Customer",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                ],
              ),

              SizedBox(height: 30,),
              CustomInkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){return DeliverySuccessfulScreen();}));
                    },
                  child: AddOrRejectWidget()),
              SizedBox(height: 10,)
            ],
          )
        ),
      ),
    );
  }
}



class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 160,width: Get.width,),
        Container(
          height: 120,width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.1),blurRadius: 5,spreadRadius: 2,offset: Offset(2,2))
              ]
          ),
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
          margin: EdgeInsets.symmetric(horizontal: 0,vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("assets/images/user4.jpg",width:90,height:90,fit: BoxFit.cover,),
              ),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text("Himalaya Deol",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsRegular"),),
                    Text("Food Delivery",style: CustomTextStyle.mediumTextStyle(color: Colors.grey,),)
                  ],
                ),
              )
            ],
          ),
        ),

        Positioned(
          bottom: 0,
          right: 15,
          child:Container(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle
            ),
            padding: EdgeInsets.all(15),
            child:  Column(
              children: [
                Text("10",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),),
                Text("MIN",style: CustomTextStyle.smallTextStyle1(color: Colors.white),)

              ],
            ),
          )
        )
      ],
    );
  }
}



class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*0.9,
      decoration: BoxDecoration(
          color: AppColors.primaryDarkBlue,
          borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text("\$ 9.00",style: CustomTextStyle.ultraBoldTextStyle(color: Colors.white),),
              Text("Guaranteed",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)
            ],
          ),

          Container(height: 50,width: 1,color: Colors.black,),
          Column(
            children: [
              Text("17 min",style: CustomTextStyle.ultraBoldTextStyle(color: Colors.white),),
              Text("Total Duration",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}
