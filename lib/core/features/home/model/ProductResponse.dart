class ProductResponse {
  ProductResponse({
      this.success, 
      this.error, 
      this.productList, 
      this.pageInfo,});

  ProductResponse.fromJson(dynamic json) {
    success = json['Success'];
    error = json['error'];
    if (json['ProductList'] != null) {
      productList = [];
      json['ProductList'].forEach((v) {
        productList?.add(ProductList.fromJson(v));
      });
    }
    pageInfo = json['PageInfo'] != null ? PageInfo.fromJson(json['PageInfo']) : null;
  }
  num? success;
  bool? error;
  List<ProductList>? productList;
  PageInfo? pageInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Success'] = success;
    map['error'] = error;
    if (productList != null) {
      map['ProductList'] = productList?.map((v) => v.toJson()).toList();
    }
    if (pageInfo != null) {
      map['PageInfo'] = pageInfo?.toJson();
    }
    return map;
  }

}

class PageInfo {
  PageInfo({
      this.pageNo, 
      this.pageSize, 
      this.pageCount, 
      this.totalRecordCount,});

  PageInfo.fromJson(dynamic json) {
    pageNo = json['PageNo'];
    pageSize = json['PageSize'];
    pageCount = json['PageCount'];
    totalRecordCount = json['TotalRecordCount'];
  }
  num? pageNo;
  num? pageSize;
  num? pageCount;
  num? totalRecordCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PageNo'] = pageNo;
    map['PageSize'] = pageSize;
    map['PageCount'] = pageCount;
    map['TotalRecordCount'] = totalRecordCount;
    return map;
  }

}

class ProductList {
  ProductList({
      this.id, 
      this.type, 
      this.parentCode, 
      this.name, 
      this.code, 
      this.price, 
      this.costPrice, 
      this.unitName, 
      this.categoryName, 
      this.brandName, 
      this.modelName, 
      this.variantName, 
      this.sizeName, 
      this.colorName, 
      this.oldPrice, 
      this.imagePath, 
      this.productBarcode, 
      this.description, 
      this.childList, 
      this.warehouseList, 
      this.currentStock, 
      this.createDate, 
      this.updateDate,});

  ProductList.fromJson(dynamic json) {
    id = json['Id'];
    type = json['Type'];
    parentCode = json['ParentCode'];
    name = json['Name'];
    code = json['Code'];
    price = json['Price'];
    costPrice = json['CostPrice'];
    unitName = json['UnitName'];
    categoryName = json['CategoryName'];
    brandName = json['BrandName'];
    modelName = json['ModelName'];
    variantName = json['VariantName'];
    sizeName = json['SizeName'];
    colorName = json['ColorName'];
    oldPrice = json['OldPrice'];
    imagePath = json['ImagePath'];
    productBarcode = json['ProductBarcode'];
    description = json['Description'];
    if (json['ChildList'] != null) {
      childList = [];
      json['ChildList'].forEach((v) {
       // childList?.add(Dynamic.fromJson(v));
      });
    }
    if (json['WarehouseList'] != null) {
      warehouseList = [];
      json['WarehouseList'].forEach((v) {
        //warehouseList?.add(Dynamic.fromJson(v));
      });
    }
    currentStock = json['CurrentStock'];
    createDate = json['CreateDate'];
    updateDate = json['UpdateDate'];
  }
  num? id;
  dynamic type;
  dynamic parentCode;
  String? name;
  String? code;
  num? price;
  num? costPrice;
  String? unitName;
  String? categoryName;
  String? brandName;
  String? modelName;
  String? variantName;
  String? sizeName;
  String? colorName;
  num? oldPrice;
  dynamic imagePath;
  String? productBarcode;
  String? description;
  List<dynamic>? childList;
  List<dynamic>? warehouseList;
  num? currentStock;
  String? createDate;
  String? updateDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['Type'] = type;
    map['ParentCode'] = parentCode;
    map['Name'] = name;
    map['Code'] = code;
    map['Price'] = price;
    map['CostPrice'] = costPrice;
    map['UnitName'] = unitName;
    map['CategoryName'] = categoryName;
    map['BrandName'] = brandName;
    map['ModelName'] = modelName;
    map['VariantName'] = variantName;
    map['SizeName'] = sizeName;
    map['ColorName'] = colorName;
    map['OldPrice'] = oldPrice;
    map['ImagePath'] = imagePath;
    map['ProductBarcode'] = productBarcode;
    map['Description'] = description;
    if (childList != null) {
      map['ChildList'] = childList?.map((v) => v.toJson()).toList();
    }
    if (warehouseList != null) {
      map['WarehouseList'] = warehouseList?.map((v) => v.toJson()).toList();
    }
    map['CurrentStock'] = currentStock;
    map['CreateDate'] = createDate;
    map['UpdateDate'] = updateDate;
    return map;
  }

}