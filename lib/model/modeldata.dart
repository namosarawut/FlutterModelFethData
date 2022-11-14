class CryptoModel {
  final String? symbol;
  final bool? isUTC;
  final String? day;
  final int? open;
  final double? close;
  final List<OpenTrades>? openTrades;
  final List<ClosingTrades>? closingTrades;

  CryptoModel({
    this.symbol,
    this.isUTC,
    this.day,
    this.open,
    this.close,
    this.openTrades,
    this.closingTrades,
  });

  CryptoModel.fromJson(Map<String, dynamic> json)
      : symbol = json['symbol'] as String?,
        isUTC = json['isUTC'] as bool?,
        day = json['day'] as String?,
        open = json['open'] as int?,
        close = json['close'] as double?,
        openTrades = (json['openTrades'] as List?)?.map((dynamic e) => OpenTrades.fromJson(e as Map<String,dynamic>)).toList(),
        closingTrades = (json['closingTrades'] as List?)?.map((dynamic e) => ClosingTrades.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'symbol' : symbol,
    'isUTC' : isUTC,
    'day' : day,
    'open' : open,
    'close' : close,
    'openTrades' : openTrades?.map((e) => e.toJson()).toList(),
    'closingTrades' : closingTrades?.map((e) => e.toJson()).toList()
  };
}

class OpenTrades {
  final int? x;
  final String? p;
  final double? s;
  final List<int>? c;
  final String? i;
  final int? t;

  OpenTrades({
    this.x,
    this.p,
    this.s,
    this.c,
    this.i,
    this.t,
  });

  OpenTrades.fromJson(Map<String, dynamic> json)
      : x = json['x'] as int?,
        p = json['p'].toString(),
        s = json['s'] as double?,
        c = (json['c'] as List?)?.map((dynamic e) => e as int).toList(),
        i = json['i'] as String?,
        t = json['t'] as int?;

  Map<String, dynamic> toJson() => {
    'x' : x,
    'p' : p,
    's' : s,
    'c' : c,
    'i' : i,
    't' : t
  };
}

class ClosingTrades {
  final int? x;
  final String? p;
  final double? s;
  final List<int>? c;
  final String? i;
  final int? t;

  ClosingTrades({
    this.x,
    this.p,
    this.s,
    this.c,
    this.i,
    this.t,
  });

  ClosingTrades.fromJson(Map<String, dynamic> json)
      : x = json['x'] as int?,
        p = json['p'].toString(),
        s = json['s'] as double?,
        c = (json['c'] as List?)?.map((dynamic e) => e as int).toList(),
        i = json['i'] as String?,
        t = json['t'] as int?;

  Map<String, dynamic> toJson() => {
    'x' : x,
    'p' : p,
    's' : s,
    'c' : c,
    'i' : i,
    't' : t
  };
}