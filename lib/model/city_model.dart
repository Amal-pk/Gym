class GymsCitys {
    GymsCitys({
        required this.status,
        required this.data,
    });

    bool status;
    List<Datum> data;

    factory GymsCitys.fromJson(Map<String, dynamic> json) => GymsCitys(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.uid,
        required this.city,
        required this.dateAdded,
        required this.status,
        required this.popularLocations,
        required this.image,
        this.lastUpdated,
    });

    String id;
    String uid;
    String city;
    String dateAdded;
    String status;
    List<PopularLocation> popularLocations;
    String image;
    dynamic lastUpdated;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        uid: json["uid"],
        city: json["city"],
        dateAdded: json["date_added"],
        status: json["status"],
        popularLocations: List<PopularLocation>.from(json["popular_locations"].map((x) => PopularLocation.fromJson(x))),
        image: json["image"],
        lastUpdated: json["last_updated"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "city": city,
        "date_added": dateAdded,
        "status": status,
        "popular_locations": List<dynamic>.from(popularLocations.map((x) => x.toJson())),
        "image": image,
        "last_updated": lastUpdated,
    };
}

class PopularLocation {
    PopularLocation({
        required this.location,
        required this.address2,
        required this.pin,
        required this.country,
    });

    String location;
    String address2;
    String pin;
    Country country;

    factory PopularLocation.fromJson(Map<String, dynamic> json) => PopularLocation(
        location: json["location"],
        address2: json["address2"],
        pin: json["pin"],
        country: countryValues.map[json["country"]]!,
    );

    Map<String, dynamic> toJson() => {
        "location": location,
        "address2": address2,
        "pin": pin,
        "country": countryValues.reverse[country],
    };
}

enum Country { INDIA }

final countryValues = EnumValues({
    "India": Country.INDIA
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
