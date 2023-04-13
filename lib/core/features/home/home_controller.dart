import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_list/core/features/home/model/ProductResponse.dart';
import 'package:product_list/core/network/dio_client.dart';
import 'package:get_storage/get_storage.dart';
import 'package:product_list/core/utils/toast.dart';

class HomeController extends GetxController with StateMixin<List<ProductList>>{

  final dioClient = DioClient.instance;

  final productlist = <ProductList>[].obs;

  final storage = GetStorage();


  @override
  void onInit() {
    super.onInit();

    storage.write("user_token", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI3OCIsIkN1cnJlbnRDb21JZCI6IjEiLCJuYmYiOjE2ODEyMDcxNDQsImV4cCI6MTY4MTgxMTk0NCwiaWF0IjoxNjgxMjA3MTQ0fQ.UWdxlq2vEB4IDn4XlfWQh5fx27E7IyiFijlBgqO-bO0");

    ShowProductList();
  }


  Future<void> ShowProductList() async{

    try {


      change(null, status: RxStatus.loading());

      final res = await dioClient.get("Values/GetProductList");

      final product_response = ProductResponse.fromJson(res);

      if(product_response.success==1 && product_response.error==false){

        var list = product_response.productList?? [];

        productlist.assignAll(list);


        change(productlist, status: RxStatus.success());


      }else {

        Toast.errorToast("${product_response.error}");
        change(null, status: RxStatus.error("${product_response.error}"));
      }

    } catch(e) {

      Toast.errorToast("${e.toString()}");

      debugPrint(e.toString());

      change(null, status: RxStatus.error(e.toString()));
    }
  }

}