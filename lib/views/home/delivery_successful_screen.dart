import 'package:delivery_app/configs/constants/app_constants.dart';
import 'package:delivery_app/configs/styles/app_colors.dart';
import 'package:delivery_app/configs/styles/custom_text_style.dart';
import 'package:delivery_app/views/payment/payment_received.dart';
import 'package:delivery_app/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DeliverySuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [

              SizedBox(height: 20,),
              Row(
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
                        Text("Himalaya Deol",style: CustomTextStyle.bigTextStyle(),),
                        Text("Food Delivery",style: CustomTextStyle.mediumTextStyle(color: Colors.grey,),)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/wallet.png",width: Get.width*0.3,),
                  Image.asset("assets/images/cash.png",width: Get.width*0.2,),
                  Image.asset("assets/images/card.png",width: Get.width*0.3,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Wallet",style: CustomTextStyle.mediumTextStyle(),),
                  Text("         Cash",style: CustomTextStyle.mediumTextStyle(),),
                  Text("Credit Card",style: CustomTextStyle.mediumTextStyle(),),

                ],
              ),
              SizedBox(height: 50,),


              Padding(
                padding:EdgeInsets.symmetric(horizontal:5),
                child: Column(
                  children: [

                    CustomRow(title1: "Late Night Charge",title2: "\$38",),
                    CustomRow(title1: "Moving Cart ",title2: "\$56",title3: "Additional Services",),
                    CustomRow(title1: "Discount",title2: "\$32",title3: "Promo Code: 554dffd",),

                    SizedBox(height: 5,),
                    Divider(),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("Total",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                        Spacer(),
                        Text("\$124.67",style: CustomTextStyle.ultraBoldTextStyle(),)
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),

              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Delivery Successful",
                onTap: (){
                  Get.to(PaymentReceivedScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}



class CustomRow extends StatelessWidget {

  final String title1;
  final String title2;
  final String title3;
  CustomRow({this.title2,this.title1,this.title3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          title3 == null ? Expanded(child: Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),)) :
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),),
                Text(title3,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
              ],
            ),
          ),
          Text(title2,style: CustomTextStyle.smallTextStyle1(),)
        ],
      ),
    );
  }
}
