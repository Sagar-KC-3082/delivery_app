import 'package:delivery_app/models/home/curent_order_model.dart';
import 'package:delivery_app/views/home/order_details.dart';
import 'package:delivery_app/widgets/accept_or_decline_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/configs/constants/app_constants.dart';
import 'package:delivery_app/configs/styles/app_colors.dart';
import 'package:delivery_app/configs/styles/custom_text_style.dart';
import 'package:delivery_app/widgets/custom_drawer.dart';
import 'package:delivery_app/widgets/custom_inkwell.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> _globalKey1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey1,
      drawer: CustomDrawer(),
      backgroundColor: AppColors.primaryDarkBlue,
      body: SafeArea(
        child: Column(
          children: [
            ColorfulAppBar(globalKey: _globalKey1,),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Expanded(child: OrderContainer(title: "Total Order",amount: "250",)),
                        Expanded(child: OrderContainer(title: "Total Earn",amount: "180\$",)),
                        Expanded(child: OrderContainer(title: "Total Review",amount: "104",)),
                      ],
                    ),
                    SizedBox(height: 20,),

                    Text(" Current Order",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 10,),

                    CurrentOrderContainer(currentOrderModel: CurrentOrderModel(restaurantName: "Hotel Taj",restaurantAddress: "2 New Nehru Nagar Indore 457415, New Bhopal Factory, Madhya Pradesh",stars: "4.2",ratings: "120",imageUrl: "assets/images/foodItem8.png",food:"Fruit, Fresh fruit",foodInfo1: "Western food  \$59 Per plate,",foodQuantity: "2 Pizza"),),
                    CurrentOrderContainer(currentOrderModel: CurrentOrderModel(restaurantName: "Hotel Taj",restaurantAddress: "2 New Nehru Nagar Indore 457415, New Bhopal Factory, Madhya Pradesh",stars: "4.2",ratings: "120",imageUrl: "assets/images/foodItem7.png",food:"Fruit, Fresh fruit",foodInfo1: "Western food  \$59 Per plate,",foodQuantity: "2 Pizza"),),
                    CurrentOrderContainer(currentOrderModel: CurrentOrderModel(restaurantName: "Hotel Taj",restaurantAddress: "2 New Nehru Nagar Indore 457415, New Bhopal Factory, Madhya Pradesh",stars: "4.2",ratings: "120",imageUrl: "assets/images/foodItem8.png",food:"Fruit, Fresh fruit",foodInfo1: "Western food  \$59 Per plate,",foodQuantity: "2 Pizza"),),

                  ],
                ),
              ),
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
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
      child: Row(
        children: [
          CustomInkWell(
              onTap: (){
                widget.globalKey.currentState.openDrawer();
              },
              child: Icon(Icons.menu,color: Colors.white,)),
          Spacer(),
          Switch(
            value: _switchValue,
            onChanged: (value){
              setState(() {
                _switchValue = value;
              });
            },
            activeColor: Colors.white,

          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("assets/images/user4.jpg",height: 35,width: 35,fit: BoxFit.cover,),
          )
        ],
      ),
    );
  }
}


class OrderContainer extends StatelessWidget {

  final String title;
  final String amount;
  OrderContainer({this.title,this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
          ]
      ),
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 25),
      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10,left: 0),
      child: Column(
        children: [
          Text(amount,style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
          SizedBox(height: 5,),
          Text(title,style: CustomTextStyle.smallTextStyle1(),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}



class CurrentOrderContainer extends StatelessWidget {

  final CurrentOrderModel currentOrderModel;
  CurrentOrderContainer({this.currentOrderModel});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        Get.to(OrderDetail());
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 2,offset: Offset(2,2))
            ]
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(child: Text(currentOrderModel.restaurantName,style: CustomTextStyle.mediumTextStyle(),)),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      SizedBox(width: 2),
                      Text(currentOrderModel.stars,style: CustomTextStyle.ultraSmallBoldTextStyle(),),
                      Text("( ${currentOrderModel.ratings} ratings)",style: CustomTextStyle.ultraSmallTextStyle(),)
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 8,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(child: Text(currentOrderModel.restaurantAddress,style: CustomTextStyle.smallTextStyle1(),)),
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black
                    ),
                    padding: EdgeInsets.all(3),
                    child: Icon(Icons.call,color: Colors.white,size: 15,),
                  )
                ],
              ),
            ),

            SizedBox(height: 10,),
            Divider(color: Colors.grey.withOpacity(0.5),),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(currentOrderModel.imageUrl,height: 60,width: 45,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(currentOrderModel.food,style: CustomTextStyle.mediumTextStyle(),),
                        Text(currentOrderModel.foodInfo1,style: CustomTextStyle.ultraSmallTextStyle(),)
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),

                  Text(currentOrderModel.foodQuantity,style: CustomTextStyle.mediumTextStyle(),)
                ],
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AddOrRejectWidget(),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
