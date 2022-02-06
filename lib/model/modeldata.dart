class Products {
  final List<Results>? results;
  final int? statusCode;
  final String? messages;

  Products({
    this.results,
    this.statusCode,
    this.messages,
  });

  Products.fromJson(Map<String, dynamic> json)
      : results = (json['Results'] as List?)?.map((dynamic e) => Results.fromJson(e as Map<String,dynamic>)).toList(),
        statusCode = json['StatusCode'] as int?,
        messages = json['Messages'] as String?;

  Map<String, dynamic> toJson() => {
    'Results' : results?.map((e) => e.toJson()).toList(),
    'StatusCode' : statusCode,
    'Messages' : messages
  };
}

class Results {
  final int? id;
  final String? sku;
  final String? name;
  final String? fullname;
  final String? detail;
  final String? imagePath;
  final int? price;
  final int? stock;
  final int? unit;
  final String? unitname;
  final bool? notSale;
  final String? active;
  final dynamic productReview;
  final String? created;
  final String? updatedt;
  final Type? type;
  final List<Location>? location;
  final List<Locations>? locations;

  Results({
    this.id,
    this.sku,
    this.name,
    this.fullname,
    this.detail,
    this.imagePath,
    this.price,
    this.stock,
    this.unit,
    this.unitname,
    this.notSale,
    this.active,
    this.productReview,
    this.created,
    this.updatedt,
    this.type,
    this.location,
    this.locations,
  });

  Results.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        sku = json['sku'] as String?,
        name = json['name'] as String?,
        fullname = json['fullname'] as String?,
        detail = json['detail'] as String?,
        imagePath = json['image_path'] as String?,
        price = json['price'] as int?,
        stock = json['stock'] as int?,
        unit = json['unit'] as int?,
        unitname = json['unitname'] as String?,
        notSale = json['not_sale'] as bool?,
        active = json['active'] as String?,
        productReview = json['product_review'],
        created = json['created'] as String?,
        updatedt = json['updatedt'] as String?,
        type = (json['type'] as Map<String,dynamic>?) != null ? Type.fromJson(json['type'] as Map<String,dynamic>) : null,
        location = (json['location'] as List?)?.map((dynamic e) => Location.fromJson(e as Map<String,dynamic>)).toList(),
        locations = (json['locations'] as List?)?.map((dynamic e) => Locations.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'id' : id,
    'sku' : sku,
    'name' : name,
    'fullname' : fullname,
    'detail' : detail,
    'image_path' : imagePath,
    'price' : price,
    'stock' : stock,
    'unit' : unit,
    'unitname' : unitname,
    'not_sale' : notSale,
    'active' : active,
    'product_review' : productReview,
    'created' : created,
    'updatedt' : updatedt,
    'type' : type?.toJson(),
    'location' : location?.map((e) => e.toJson()).toList(),
    'locations' : locations?.map((e) => e.toJson()).toList()
  };
}

class Type {
  final int? id;
  final String? code;
  final String? name;
  final bool? close;
  final dynamic closeDt;
  final dynamic startDate;
  final dynamic endDate;
  final bool? limitdate;
  final String? created;
  final String? updatedt;

  Type({
    this.id,
    this.code,
    this.name,
    this.close,
    this.closeDt,
    this.startDate,
    this.endDate,
    this.limitdate,
    this.created,
    this.updatedt,
  });

  Type.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        code = json['code'] as String?,
        name = json['name'] as String?,
        close = json['close'] as bool?,
        closeDt = json['close_dt'],
        startDate = json['start_date'],
        endDate = json['end_date'],
        limitdate = json['limitdate'] as bool?,
        created = json['created'] as String?,
        updatedt = json['updatedt'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'code' : code,
    'name' : name,
    'close' : close,
    'close_dt' : closeDt,
    'start_date' : startDate,
    'end_date' : endDate,
    'limitdate' : limitdate,
    'created' : created,
    'updatedt' : updatedt
  };
}

class Location {
  final int? products;
  final int? storelocations;
  final String? created;
  final String? updatedt;

  Location({
    this.products,
    this.storelocations,
    this.created,
    this.updatedt,
  });

  Location.fromJson(Map<String, dynamic> json)
      : products = json['products'] as int?,
        storelocations = json['storelocations'] as int?,
        created = json['created'] as String?,
        updatedt = json['updatedt'] as String?;

  Map<String, dynamic> toJson() => {
    'products' : products,
    'storelocations' : storelocations,
    'created' : created,
    'updatedt' : updatedt
  };
}

class Locations {
  final int? products;
  final Storelocations? storelocations;
  final String? created;
  final String? updatedt;

  Locations({
    this.products,
    this.storelocations,
    this.created,
    this.updatedt,
  });

  Locations.fromJson(Map<String, dynamic> json)
      : products = json['products'] as int?,
        storelocations = (json['storelocations'] as Map<String,dynamic>?) != null ? Storelocations.fromJson(json['storelocations'] as Map<String,dynamic>) : null,
        created = json['created'] as String?,
        updatedt = json['updatedt'] as String?;

  Map<String, dynamic> toJson() => {
    'products' : products,
    'storelocations' : storelocations?.toJson(),
    'created' : created,
    'updatedt' : updatedt
  };
}

class Storelocations {
  final int? id;
  final String? code;
  final String? name;
  final String? country;
  final String? addressText;
  final String? province;
  final String? district;
  final String? subDistrict;
  final String? zipcode;
  final String? addressFull;
  final dynamic closeDt;
  final String? created;
  final String? updatedt;

  Storelocations({
    this.id,
    this.code,
    this.name,
    this.country,
    this.addressText,
    this.province,
    this.district,
    this.subDistrict,
    this.zipcode,
    this.addressFull,
    this.closeDt,
    this.created,
    this.updatedt,
  });

  Storelocations.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        code = json['code'] as String?,
        name = json['name'] as String?,
        country = json['country'] as String?,
        addressText = json['address_text'] as String?,
        province = json['province'] as String?,
        district = json['district'] as String?,
        subDistrict = json['sub_district'] as String?,
        zipcode = json['zipcode'] as String?,
        addressFull = json['address_full'] as String?,
        closeDt = json['close_dt'],
        created = json['created'] as String?,
        updatedt = json['updatedt'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'code' : code,
    'name' : name,
    'country' : country,
    'address_text' : addressText,
    'province' : province,
    'district' : district,
    'sub_district' : subDistrict,
    'zipcode' : zipcode,
    'address_full' : addressFull,
    'close_dt' : closeDt,
    'created' : created,
    'updatedt' : updatedt
  };
}