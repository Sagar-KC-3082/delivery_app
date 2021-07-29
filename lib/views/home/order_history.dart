import 'package:delivery_app/models/home/curent_order_model.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/configs/constants/app_constants.dart';
import 'package:delivery_app/configs/styles/app_colors.dart';
import 'package:delivery_app/configs/styles/custom_text_style.dart';
import 'package:delivery_app/widgets/accept_or_decline_widget.dart';
import 'package:delivery_app/widgets/custom_inkwell.dart';
import 'package:get/get.dart';



class OrderHistory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDarkBlue,
      body: SafeArea(
        child: Column(
          children: [
            ColorfulAppBar(),
            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [

                      OrderHistoryWidget(image: "assets/images/foodItem8.png",title: "Good Day Cafe",date: "22 June, 2021",rate: "\$ 124.99",success: true,),
                      OrderHistoryWidget(image: "assets/images/foodItem7.png",title: "Nescafe Park",date: "22 June, 2021",rate: "\$ 124.99",success: false,),
                      OrderHistoryWidget(image: "assets/images/foodItem8.png",title: "KFC ",date: "22 June, 2021",rate: "\$ 124.99",success: true,),
                      OrderHistoryWidget(image: "assets/images/foodItem8.png",title: "Good Day Cafe",date: "22 June, 2021",rate: "\$ 124.99",success: true,),
                      OrderHistoryWidget(image: "assets/images/foodItem7.png",title: "Good Day Cafe",date: "22 June, 2021",rate: "\$ 124.99",success: false,),
                      OrderHistoryWidget(image: "assets/images/foodItem8.png",title: "Good Day Cafe",date: "22 June, 2021",rate: "\$ 124.99",success: true,),
                      OrderHistoryWidget(image: "assets/images/foodItem8.png",title: "Good Day Cafe",date: "22 June, 2021",rate: "\$ 124.99",success: true,),
                      OrderHistoryWidget(image: "assets/images/foodItem7.png",title: "Good Day Cafe",date: "22 June, 2021",rate: "\$ 124.99",success: false,),
                      OrderHistoryWidget(image: "assets/images/foodItem8.png",title: "Good Day Cafe",date: "22 June, 2021",rate: "\$ 124.99",success: true,),


                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}




class ColorfulAppBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> globalKey;
  ColorfulAppBar({this.globalKey});
  @override
  _ColorfulAppBarState createState() => _ColorfulAppBarState();
}

class _ColorfulAppBarState extends State<ColorfulAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: 20),
      child: Row(
        children: [
          CustomInkWell(
              onTap: (){
                Navigator.pop(context);;
              },
              child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
          Spacer(),
          Text("Order History",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsRegular",color: Colors.white),),
          Spacer(),
        ],
      ),
    );
  }
}



class OrderHistoryWidget extends StatelessWidget {

  final String image;
  final String title;
  final String date;
  final String rate;
  bool success;
  OrderHistoryWidget({this.image, this.title, this.date, this.rate, this.success});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.1),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
          ]
      ),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 15),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image,height: 60,width: 60,fit: BoxFit.cover,)),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: CustomTextStyle.smallBoldTextStyle1(),),
                Text(date,style: CustomTextStyle.ultraSmallTextStyle(),),
                Text(rate,style: CustomTextStyle.ultraSmallBoldTextStyle(),)
              ],
            ),
          ),
          SizedBox(width: 10,),

          Container(
            width: Get.width*0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: success == true ? Colors.white : AppColors.primaryDarkBlue,
              border: success == true ? Border.all(color: Colors.grey) : Border.all(color: Colors.transparent)
            ),
            padding: EdgeInsets.all(15),
            child: Center(child: Text(success == true ? "Order Successful" : "Cancel",style: CustomTextStyle.smallTextStyle1(color: success ==true ? Colors.black : Colors.white),)),
          )
        ],
      ),
    );
  }


}



