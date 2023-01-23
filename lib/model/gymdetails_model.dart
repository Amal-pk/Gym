class GymsDetails {
  GymsDetails({
    required this.status,
    required this.message,
    required this.data,
    required this.terms,
  });

  bool status;
  String message;
  List<Details> data;
  List<Term> terms;

  factory GymsDetails.fromJson(Map<String, dynamic> json) => GymsDetails(
        status: json["status"],
        message: json["message"],
        data: List<Details>.from(json["data"].map((x) => Details.fromJson(x))),
        terms: List<Term>.from(json["terms"].map((x) => Term.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "terms": List<dynamic>.from(terms.map((x) => x.toJson())),
      };
}

class Details {
  Details({
    required this.userId,
    required this.gymName,
    required this.address1,
    required this.address2,
    required this.city,
    required this.state,
    required this.latitude,
    required this.longitude,
    required this.pin,
    required this.country,
    required this.name,
    required this.freeTrial,
    required this.distance,
    required this.distanceText,
    required this.durationText,
    required this.duration,
    required this.rating,
    this.text1,
    this.text2,
    this.planName,
    this.planDuration,
    this.planPrice,
    this.planDescription,
    this.coverImage,
    required this.gallery,
    required this.type,
    required this.description,
    required this.status,
    required this.slug,
    required this.categoryId,
    required this.offer,
    required this.benefits,
    required this.addons,
    required this.totalRating,
    required this.isPartial,
    required this.isCash,
    required this.categoryName,
    this.addonFront,
    this.wtfShare,
    required this.isDiscount,
  });

  String userId;
  String gymName;
  String address1;
  String address2;
  City city;
  State state;
  String latitude;
  String longitude;
  String pin;
  Country country;
  String name;
  int freeTrial;
  Distance distance;
  DistanceText distanceText;
  DurationText durationText;
  Distance duration;
  double rating;
  String? text1;
  String? text2;
  String? planName;
  String? planDuration;
  String? planPrice;
  String? planDescription;
  String? coverImage;
  List<Gallery> gallery;
  DatumType type;
  String description;
  Status status;
  String slug;
  DatumCategoryId categoryId;
  List<Offer> offer;
  List<Benefit> benefits;
  List<dynamic> addons;
  int totalRating;
  String isPartial;
  int isCash;
  CategoryName categoryName;
  dynamic addonFront;
  double? wtfShare;
  int isDiscount;

  factory Details.fromJson(Map<String, dynamic> json) => Details(
        userId: json["user_id"],
        gymName: json["gym_name"],
        address1: json["address1"],
        address2: json["address2"],
        city: cityValues.map[json["city"]]!,
        state: stateValues.map[json["state"]]!,
        latitude: json["latitude"],
        longitude: json["longitude"],
        pin: json["pin"],
        country: countryValues.map[json["country"]]!,
        name: json["name"],
        freeTrial: json["free_trial"],
        distance: distanceValues.map[json["distance"]]!,
        distanceText: distanceTextValues.map[json["distance_text"]]!,
        durationText: durationTextValues.map[json["duration_text"]]!,
        duration: distanceValues.map[json["duration"]]!,
        rating: json["rating"]?.toDouble(),
        text1: json["text1"],
        text2: json["text2"],
        planName: json["plan_name"],
        planDuration: json["plan_duration"],
        planPrice: json["plan_price"],
        planDescription: json["plan_description"],
        coverImage: json["cover_image"],
        gallery:
            List<Gallery>.from(json["gallery"].map((x) => Gallery.fromJson(x))),
        type: datumTypeValues.map[json["type"]]!,
        description: json["description"],
        status: statusValues.map[json["status"]]!,
        slug: json["slug"],
        categoryId: datumCategoryIdValues.map[json["category_id"]]!,
        offer: List<Offer>.from(json["offer"].map((x) => Offer.fromJson(x))),
        benefits: List<Benefit>.from(
            json["benefits"].map((x) => Benefit.fromJson(x))),
        addons: List<dynamic>.from(json["addons"].map((x) => x)),
        totalRating: json["total_rating"],
        isPartial: json["is_partial"],
        isCash: json["is_cash"],
        categoryName: categoryNameValues.map[json["category_name"]]!,
        addonFront: json["addon_front"],
        wtfShare: json["wtf_share"]?.toDouble(),
        isDiscount: json["is_discount"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "gym_name": gymName,
        "address1": address1,
        "address2": address2,
        "city": cityValues.reverse[city],
        "state": stateValues.reverse[state],
        "latitude": latitude,
        "longitude": longitude,
        "pin": pin,
        "country": countryValues.reverse[country],
        "name": name,
        "free_trial": freeTrial,
        "distance": distanceValues.reverse[distance],
        "distance_text": distanceTextValues.reverse[distanceText],
        "duration_text": durationTextValues.reverse[durationText],
        "duration": distanceValues.reverse[duration],
        "rating": rating,
        "text1": text1,
        "text2": text2,
        "plan_name": planName,
        "plan_duration": planDuration,
        "plan_price": planPrice,
        "plan_description": planDescription,
        "cover_image": coverImage,
        "gallery": List<dynamic>.from(gallery.map((x) => x.toJson())),
        "type": datumTypeValues.reverse[type],
        "description": description,
        "status": statusValues.reverse[status],
        "slug": slug,
        "category_id": datumCategoryIdValues.reverse[categoryId],
        "offer": List<dynamic>.from(offer.map((x) => x.toJson())),
        "benefits": List<dynamic>.from(benefits.map((x) => x.toJson())),
        "addons": List<dynamic>.from(addons.map((x) => x)),
        "total_rating": totalRating,
        "is_partial": isPartial,
        "is_cash": isCash,
        "category_name": categoryNameValues.reverse[categoryName],
        "addon_front": addonFront,
        "wtf_share": wtfShare,
        "is_discount": isDiscount,
      };
}

class Benefit {
  Benefit({
    required this.id,
    required this.uid,
    required this.gymId,
    required this.name,
    required this.breif,
    required this.image,
    required this.status,
    required this.dateAdded,
    required this.lastUpdated,
  });

  int id;
  String uid;
  String gymId;
  String name;
  String breif;
  String image;
  Status status;
  DateTime dateAdded;
  DateTime lastUpdated;

  factory Benefit.fromJson(Map<String, dynamic> json) => Benefit(
        id: json["id"],
        uid: json["uid"],
        gymId: json["gym_id"],
        name: json["name"],
        breif: json["breif"],
        image: json["image"],
        status: statusValues.map[json["status"]]!,
        dateAdded: DateTime.parse(json["date_added"]),
        lastUpdated: DateTime.parse(json["last_updated"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "gym_id": gymId,
        "name": name,
        "breif": breif,
        "image": image,
        "status": statusValues.reverse[status],
        "date_added": dateAdded.toIso8601String(),
        "last_updated": lastUpdated.toIso8601String(),
      };
}

enum Status { ACTIVE, DELETED }

final statusValues =
    EnumValues({"active": Status.ACTIVE, "deleted": Status.DELETED});

enum DatumCategoryId {
  KZ_X0_K_C4_E_ZYXKC,
  KWOQB_O_WLRSF_Y7,
  THE_30_B_SR_IE9_AJ97_J
}

final datumCategoryIdValues = EnumValues({
  "kwoqbOWlrsfY7": DatumCategoryId.KWOQB_O_WLRSF_Y7,
  "KzX0kC4EZyxkc": DatumCategoryId.KZ_X0_K_C4_E_ZYXKC,
  "30bSrIe9aj97j": DatumCategoryId.THE_30_B_SR_IE9_AJ97_J
});

enum CategoryName { WTF_EXCLUSIVE, WTF_CO_BRANDED, WTF_POWERED }

final categoryNameValues = EnumValues({
  "WTF Co-Branded": CategoryName.WTF_CO_BRANDED,
  "WTF Exclusive": CategoryName.WTF_EXCLUSIVE,
  "WTF Powered": CategoryName.WTF_POWERED
});

enum City { GHAZIABAD, NOIDA, DELHI, NEW_DELHI }

final cityValues = EnumValues({
  "Delhi": City.DELHI,
  "Ghaziabad": City.GHAZIABAD,
  "New Delhi": City.NEW_DELHI,
  "Noida": City.NOIDA
});

enum Country { INDIA }

final countryValues = EnumValues({"India": Country.INDIA});

enum Distance { NA_N }

final distanceValues = EnumValues({"NaN": Distance.NA_N});

enum DistanceText { NA_N_KM }

final distanceTextValues = EnumValues({"NaN km": DistanceText.NA_N_KM});

enum DurationText { NA_N_MINUTES }

final durationTextValues =
    EnumValues({"NaN minutes": DurationText.NA_N_MINUTES});

class Gallery {
  Gallery({
    required this.id,
    required this.uid,
    required this.gymId,
    required this.categoryId,
    required this.images,
    required this.status,
    required this.dateAdded,
    required this.lastUpdated,
    required this.type,
  });

  int id;
  String uid;
  String gymId;
  GalleryCategoryId categoryId;
  String images;
  Status status;
  String dateAdded;
  String lastUpdated;
  GalleryType type;

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        id: json["id"],
        uid: json["uid"],
        gymId: json["gym_id"],
        categoryId: galleryCategoryIdValues.map[json["category_id"]]!,
        images: json["images"],
        status: statusValues.map[json["status"]]!,
        dateAdded: json["date_added"],
        lastUpdated: json["last_updated"],
        type: galleryTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "gym_id": gymId,
        "category_id": galleryCategoryIdValues.reverse[categoryId],
        "images": images,
        "status": statusValues.reverse[status],
        "date_added": dateAdded,
        "last_updated": lastUpdated,
        "type": galleryTypeValues.reverse[type],
      };
}

enum GalleryCategoryId { WS_MYB0_Q6_Z_EZ_X9, WS_MYB0_Q6_Z_EZ_X8 }

final galleryCategoryIdValues = EnumValues({
  "WSMyb0Q6zEzX8": GalleryCategoryId.WS_MYB0_Q6_Z_EZ_X8,
  "WSMyb0Q6zEzX9": GalleryCategoryId.WS_MYB0_Q6_Z_EZ_X9
});

enum GalleryType { IMAGE, VIDEO }

final galleryTypeValues =
    EnumValues({"image": GalleryType.IMAGE, "video": GalleryType.VIDEO});

class Offer {
  Offer({
    required this.id,
    required this.uid,
    required this.gymId,
    required this.name,
    required this.code,
    required this.validity,
    required this.mode,
    required this.type,
    required this.value,
    required this.status,
    required this.dateAdded,
    this.lastUpdated,
    required this.isTrigger,
    required this.offerType,
    required this.typeId,
    required this.isPublic,
    required this.isFront,
  });

  int id;
  String uid;
  String gymId;
  Name name;
  String code;
  Validity validity;
  Mode mode;
  OfferType type;
  String value;
  Status status;
  String dateAdded;
  String? lastUpdated;
  int isTrigger;
  OfferTypeEnum offerType;
  String typeId;
  int isPublic;
  int isFront;

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        id: json["id"],
        uid: json["uid"],
        gymId: json["gym_id"],
        name: nameValues.map[json["name"]]!,
        code: json["code"],
        validity: validityValues.map[json["validity"]]!,
        mode: modeValues.map[json["mode"]]!,
        type: offerTypeValues.map[json["type"]]!,
        value: json["value"],
        status: statusValues.map[json["status"]]!,
        dateAdded: json["date_added"],
        lastUpdated: json["last_updated"],
        isTrigger: json["is_trigger"],
        offerType: offerTypeEnumValues.map[json["offer_type"]]!,
        typeId: json["type_id"],
        isPublic: json["is_public"],
        isFront: json["is_front"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "gym_id": gymId,
        "name": nameValues.reverse[name],
        "code": code,
        "validity": validityValues.reverse[validity],
        "mode": modeValues.reverse[mode],
        "type": offerTypeValues.reverse[type],
        "value": value,
        "status": statusValues.reverse[status],
        "date_added": dateAdded,
        "last_updated": lastUpdated,
        "is_trigger": isTrigger,
        "offer_type": offerTypeEnumValues.reverse[offerType],
        "type_id": typeId,
        "is_public": isPublic,
        "is_front": isFront,
      };
}

enum Mode { ONE_TIME }

final modeValues = EnumValues({"one-time": Mode.ONE_TIME});

enum Name { NAVRATRI_OFFER, OFFER }

final nameValues =
    EnumValues({"Navratri Offer": Name.NAVRATRI_OFFER, "Offer": Name.OFFER});

enum OfferTypeEnum { REGULAR }

final offerTypeEnumValues = EnumValues({"regular": OfferTypeEnum.REGULAR});

enum OfferType { PERCENTAGE }

final offerTypeValues = EnumValues({"percentage": OfferType.PERCENTAGE});

enum Validity { THE_06102022, THE_25022023, THE_04092022 }

final validityValues = EnumValues({
  "04-09-2022": Validity.THE_04092022,
  "06-10-2022": Validity.THE_06102022,
  "25-02-2023": Validity.THE_25022023
});

enum State { UTTAR_PRADESH, STATE_UTTAR_PRADESH, NEW_DELHI, DELHI }

final stateValues = EnumValues({
  "Delhi": State.DELHI,
  "New Delhi": State.NEW_DELHI,
  "Uttar Pradesh ": State.STATE_UTTAR_PRADESH,
  "Uttar Pradesh": State.UTTAR_PRADESH
});

enum DatumType { GYM }

final datumTypeValues = EnumValues({"gym": DatumType.GYM});

class Term {
  Term({
    required this.id,
    required this.uid,
    this.name,
    required this.icon,
    required this.status,
    required this.dateAdded,
    this.lastUpdated,
  });

  int id;
  String uid;
  String? name;
  String icon;
  Status status;
  String dateAdded;
  String? lastUpdated;

  factory Term.fromJson(Map<String, dynamic> json) => Term(
        id: json["id"],
        uid: json["uid"],
        name: json["name"],
        icon: json["icon"],
        status: statusValues.map[json["status"]]!,
        dateAdded: json["date_added"],
        lastUpdated: json["last_updated"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "name": name,
        "icon": icon,
        "status": statusValues.reverse[status],
        "date_added": dateAdded,
        "last_updated": lastUpdated,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
