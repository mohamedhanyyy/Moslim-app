
// ignore_for_file: non_constant_identifier_names

class PrayTimeModel {
  PrayTimeModel({
    required this.code,
    required this.status,
    required this.data,
  });
  late final int code;
  late final dynamic status;
  late final Data data;

  PrayTimeModel.fromJson(Map<dynamic, dynamic> json){
    code = json['code'];
    status = json['status'];
    data = Data.fromJson(json['data']);
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['code'] = code;
    _data['status'] = status;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.timings,
    required this.date,
    required this.meta,
  });
  late final Timings timings;
  late final Date date;
  late final Meta meta;

  Data.fromJson(Map<dynamic, dynamic> json){
    timings = Timings.fromJson(json['timings']);
    date = Date.fromJson(json['date']);
    meta = Meta.fromJson(json['meta']);
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['timings'] = timings.toJson();
    _data['date'] = date.toJson();
    _data['meta'] = meta.toJson();
    return _data;
  }
}

class Timings {
  Timings({
    required this.Fajr,
    required this.Sunrise,
    required this.Dhuhr,
    required this.Asr,
    required this.Sunset,
    required this.Maghrib,
    required this.Isha,
    required this.Imsak,
    required this.Midnight,
    required this.Firstthird,
    required this.Lastthird,
  });
  late final dynamic Fajr;
  late final dynamic Sunrise;
  late final dynamic Dhuhr;
  late final dynamic Asr;
  late final dynamic Sunset;
  late final dynamic Maghrib;
  late final dynamic Isha;
  late final dynamic Imsak;
  late final dynamic Midnight;
  late final dynamic Firstthird;
  late final dynamic Lastthird;

  Timings.fromJson(Map<dynamic, dynamic> json){
    Fajr = json['Fajr'];
    Sunrise = json['Sunrise'];
    Dhuhr = json['Dhuhr'];
    Asr = json['Asr'];
    Sunset = json['Sunset'];
    Maghrib = json['Maghrib'];
    Isha = json['Isha'];
    Imsak = json['Imsak'];
    Midnight = json['Midnight'];
    Firstthird = json['Firstthird'];
    Lastthird = json['Lastthird'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['Fajr'] = Fajr;
    _data['Sunrise'] = Sunrise;
    _data['Dhuhr'] = Dhuhr;
    _data['Asr'] = Asr;
    _data['Sunset'] = Sunset;
    _data['Maghrib'] = Maghrib;
    _data['Isha'] = Isha;
    _data['Imsak'] = Imsak;
    _data['Midnight'] = Midnight;
    _data['Firstthird'] = Firstthird;
    _data['Lastthird'] = Lastthird;
    return _data;
  }
}

class Date {
  Date({
    required this.readable,
    required this.timestamp,
    required this.hijri,
    required this.gregorian,
  });
  late final dynamic readable;
  late final dynamic timestamp;
  late final Hijri hijri;
  late final Gregorian gregorian;

  Date.fromJson(Map<dynamic, dynamic> json){
    readable = json['readable'];
    timestamp = json['timestamp'];
    hijri = Hijri.fromJson(json['hijri']);
    gregorian = Gregorian.fromJson(json['gregorian']);
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['readable'] = readable;
    _data['timestamp'] = timestamp;
    _data['hijri'] = hijri.toJson();
    _data['gregorian'] = gregorian.toJson();
    return _data;
  }
}

class Hijri {
  Hijri({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
    required this.holidays,
  });
  late final dynamic date;
  late final dynamic format;
  late final dynamic day;
  late final Weekday weekday;
  late final Month month;
  late final dynamic year;
  late final Designation designation;
  late final List<dynamic> holidays;

  Hijri.fromJson(Map<dynamic, dynamic> json){
    date = json['date'];
    format = json['format'];
    day = json['day'];
    weekday = Weekday.fromJson(json['weekday']);
    month = Month.fromJson(json['month']);
    year = json['year'];
    designation = Designation.fromJson(json['designation']);
    holidays = List.castFrom<dynamic, dynamic>(json['holidays']);
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['date'] = date;
    _data['format'] = format;
    _data['day'] = day;
    _data['weekday'] = weekday.toJson();
    _data['month'] = month.toJson();
    _data['year'] = year;
    _data['designation'] = designation.toJson();
    _data['holidays'] = holidays;
    return _data;
  }
}

class Weekday {
  Weekday({
    required this.en,
    required this.ar,
  });
  late final dynamic en;
  late final dynamic ar;

  Weekday.fromJson(Map<dynamic, dynamic> json){
    en = json['en'];
    ar = json['ar'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['en'] = en;
    _data['ar'] = ar;
    return _data;
  }
}

class Month {
  Month({
    required this.number,
    required this.en,
    required this.ar,
  });
  late final int number;
  late final dynamic en;
  late final dynamic ar;

  Month.fromJson(Map<dynamic, dynamic> json){
    number = json['number'];
    en = json['en'];
    ar = json['ar'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['number'] = number;
    _data['en'] = en;
    _data['ar'] = ar;
    return _data;
  }
}

class Designation {
  Designation({
    required this.abbreviated,
    required this.expanded,
  });
  late final dynamic abbreviated;
  late final dynamic expanded;

  Designation.fromJson(Map<dynamic, dynamic> json){
    abbreviated = json['abbreviated'];
    expanded = json['expanded'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['abbreviated'] = abbreviated;
    _data['expanded'] = expanded;
    return _data;
  }
}

class Gregorian {
  Gregorian({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
  });
  late final dynamic date;
  late final dynamic format;
  late final dynamic day;
  late final Weekday weekday;
  late final Month month;
  late final dynamic year;
  late final Designation designation;

  Gregorian.fromJson(Map<dynamic, dynamic> json){
    date = json['date'];
    format = json['format'];
    day = json['day'];
    weekday = Weekday.fromJson(json['weekday']);
    month = Month.fromJson(json['month']);
    year = json['year'];
    designation = Designation.fromJson(json['designation']);
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['date'] = date;
    _data['format'] = format;
    _data['day'] = day;
    _data['weekday'] = weekday.toJson();
    _data['month'] = month.toJson();
    _data['year'] = year;
    _data['designation'] = designation.toJson();
    return _data;
  }
}

class Meta {
  Meta({
    required this.latitude,
    required this.longitude,
    required this.timezone,
    required this.method,
    required this.latitudeAdjustmentMethod,
    required this.midnightMode,
    required this.school,
    required this.offset,
  });
  late final double latitude;
  late final double longitude;
  late final dynamic timezone;
  late final Method method;
  late final dynamic latitudeAdjustmentMethod;
  late final dynamic midnightMode;
  late final dynamic school;
  late final Offset offset;

  Meta.fromJson(Map<dynamic, dynamic> json){
    latitude = json['latitude'];
    longitude = json['longitude'];
    timezone = json['timezone'];
    method = Method.fromJson(json['method']);
    latitudeAdjustmentMethod = json['latitudeAdjustmentMethod'];
    midnightMode = json['midnightMode'];
    school = json['school'];
    offset = Offset.fromJson(json['offset']);
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['timezone'] = timezone;
    _data['method'] = method.toJson();
    _data['latitudeAdjustmentMethod'] = latitudeAdjustmentMethod;
    _data['midnightMode'] = midnightMode;
    _data['school'] = school;
    _data['offset'] = offset.toJson();
    return _data;
  }
}

class Method {
  Method({
    required this.id,
    required this.name,
    required this.params,
    required this.location,
  });
  late final int id;
  late final dynamic name;
  late final Params params;
  late final Location location;

  Method.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    name = json['name'];
    params = Params.fromJson(json['params']);
    location = Location.fromJson(json['location']);
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['params'] = params.toJson();
    _data['location'] = location.toJson();
    return _data;
  }
}

class Params {
  Params({
    required this.Fajr,
    required this.Isha,
  });
  late final double Fajr;
  late final double Isha;

  Params.fromJson(Map<dynamic, dynamic> json){
    Fajr = json['Fajr'];
    Isha = json['Isha'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['Fajr'] = Fajr;
    _data['Isha'] = Isha;
    return _data;
  }
}

class Location {
  Location({
    required this.latitude,
    required this.longitude,
  });
  late final double latitude;
  late final double longitude;

  Location.fromJson(Map<dynamic, dynamic> json){
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    return _data;
  }
}

class Offset {
  Offset({
    required this.Imsak,
    required this.Fajr,
    required this.Sunrise,
    required this.Dhuhr,
    required this.Asr,
    required this.Maghrib,
    required this.Sunset,
    required this.Isha,
    required this.Midnight,
  });
  late final int Imsak;
  late final int Fajr;
  late final int Sunrise;
  late final int Dhuhr;
  late final int Asr;
  late final int Maghrib;
  late final int Sunset;
  late final int Isha;
  late final int Midnight;

  Offset.fromJson(Map<dynamic, dynamic> json){
    Imsak = json['Imsak'];
    Fajr = json['Fajr'];
    Sunrise = json['Sunrise'];
    Dhuhr = json['Dhuhr'];
    Asr = json['Asr'];
    Maghrib = json['Maghrib'];
    Sunset = json['Sunset'];
    Isha = json['Isha'];
    Midnight = json['Midnight'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['Imsak'] = Imsak;
    _data['Fajr'] = Fajr;
    _data['Sunrise'] = Sunrise;
    _data['Dhuhr'] = Dhuhr;
    _data['Asr'] = Asr;
    _data['Maghrib'] = Maghrib;
    _data['Sunset'] = Sunset;
    _data['Isha'] = Isha;
    _data['Midnight'] = Midnight;
    return _data;
  }
}
