
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:get/get.dart';
import 'package:product_list/core/features/home/home_controller.dart';
import 'package:product_list/core/theme/color_scheme.dart';
import 'package:product_list/core/utils/hexcolor.dart';

 class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

   @override
   State<HomeScreen> createState() => _HomeScreenState();
 }

 class _HomeScreenState extends State<HomeScreen> {

   HomeController homeController = Get.put(HomeController());

   @override
   Widget build(BuildContext context) {
     final colorScheme = Theme.of(context).colorScheme;
     final textTheme = Theme.of(context).textTheme;

     return SafeArea(child: Scaffold(
       backgroundColor: lightColorScheme.onPrimary,
         appBar: AppBar(
             centerTitle: true,
             backgroundColor: lightColorScheme.surfaceVariant,
             title: Text(
               "Home",
               style: textTheme.titleMedium?.copyWith(
                   color: Colors.black87,
                   fontSize: 18,
                   fontWeight: FontWeight.bold),
             ),actions: [

           IconButton(
             onPressed: () {
             },
             icon: CircleAvatar(
               child: Icon(FluentIcons.alert_24_regular,size: 24,),
               radius: 24.0,
               backgroundColor:lightColorScheme.primaryContainer,
             ),
           )
         ],),

   body:Column(
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       SizedBox(
         height: 12,
       ),
       Expanded(
         child: homeController.obx((state) {
           return ListView.builder(
             itemCount: state!.length,
             itemBuilder: (BuildContext context,index){
               final item = state![index];

               return SizedBox(
                 height: 100,
                 child: Card(
                   child: Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Text(
                           "Id: ${item.id}",
                           style: textTheme.bodySmall?.copyWith(
                               color: lightColorScheme.onTertiaryContainer,
                               fontSize: 14,
                               fontWeight: FontWeight.w400),
                         ),

                         Text(
                           "Name: ${item.name}",
                           style: textTheme.bodySmall?.copyWith(
                               color: lightColorScheme.onTertiaryContainer,
                               fontSize: 14,
                               fontWeight: FontWeight.w400),
                         ),

                         Text(
                           "Price: ${item.price}",
                           style: textTheme.bodySmall?.copyWith(
                               color: lightColorScheme.onTertiaryContainer,
                               fontSize: 14,
                               fontWeight: FontWeight.w400),
                         ),

                       ],
                     ),
                   ),
                 ),
               );
             },);
         }),
       ),
     ],
   ),

     ));
   }
 }
